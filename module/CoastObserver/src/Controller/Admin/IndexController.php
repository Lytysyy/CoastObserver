<?php
namespace CoastObserver\Controller\Admin;

use Laminas\Mvc\Controller\AbstractActionController;
use Laminas\View\Model\ViewModel;
use CoastObserver\Service\OllamaClient;

class IndexController extends AbstractActionController
{
    public function indexAction()
    {
        // Affiche la vue admin (index.phtml)
        return new ViewModel();
    }

    /**
     * Endpoint JSON :
     *   /admin/coast-observer/tide-height?datetime=...&sector=cote_dopale
     *   /admin/coast-observer/tide-height?datetime=...&sector=ter_bessin
     *
     * Lit la table de marée en fonction du secteur et renvoie la hauteur d'eau.
     */
    public function tideHeightAction()
    {
        $response = $this->getResponse();
        $response->getHeaders()->addHeaderLine('Content-Type', 'application/json; charset=utf-8');

        $datetimeIso = $this->params()->fromQuery('datetime');
        $sector      = $this->params()->fromQuery('sector', 'cote_dopale'); // valeur par défaut

        if (!$datetimeIso) {
            $response->setContent(json_encode([
                'success' => false,
                'error'   => 'Paramètre "datetime" manquant',
            ]));
            return $response;
        }

        // Normalisation date ISO → AAAA-MM-JJ HH:MM:00 (UTC)
        $dt = substr($datetimeIso, 0, 19);
        $dt = str_replace('T', ' ', $dt);
        $dt = substr($dt, 0, 16) . ':00';

        // Choix de la table en fonction du secteur
        switch ($sector) {
            case 'ter_bessin':
                $tableName = 'maree_ter_bessin';
                break;
            case 'cote_dopale':
            default:
                $tableName = 'maree_cote_dopale';
                $sector = 'cote_dopale'; // normalisation
                break;
        }

        // CONFIG MYSQL
        $dbHost    = 'localhost';
        $dbName    = 'coastsnap_db';
        $dbUser    = 'root';
        $dbPass    = '';
        $dbCharset = 'utf8mb4';

        try {
            $dsn = "mysql:host={$dbHost};dbname={$dbName};charset={$dbCharset}";
            $pdo = new \PDO($dsn, $dbUser, $dbPass, [
                \PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
            ]);

            $sql = "
                SELECT date_heure, hauteur_eau
                FROM {$tableName}
                ORDER BY ABS(TIMESTAMPDIFF(SECOND, date_heure, :dt))
                LIMIT 1
            ";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([':dt' => $dt]);
            $row = $stmt->fetch(\PDO::FETCH_ASSOC);

            if (!$row) {
                $response->setContent(json_encode([
                    'success'    => false,
                    'error'      => 'Aucune donnée de marée trouvée',
                    'sector'     => $sector,
                    'table'      => $tableName,
                    'dt_requete' => $dt,
                ]));
                return $response;
            }

            $response->setContent(json_encode([
                'success'      => true,
                'sector'       => $sector,
                'table'        => $tableName,
                'date_heure'   => $row['date_heure'],
                'hauteur_eau'  => (float) $row['hauteur_eau'],
                'dt_requete'   => $dt,
            ]));
            return $response;

        } catch (\Throwable $e) {
            $response->setContent(json_encode([
                'success' => false,
                'error'   => 'Erreur DB : ' . $e->getMessage(),
            ]));
            return $response;
        }
    }

    /**
     * Endpoint JSON :
     *   /admin/coast-observer/suggest-title
     *     ?height=4.8
     *     &datetime=2025-11-28T19:32:00Z
     *     &sector=Cote%20dOpale
     *
     * Utilise Ollama pour proposer un titre court à partir des métadonnées.
     */
    public function suggestTitleAction()
    {
        $response = $this->getResponse();
        $response->getHeaders()->addHeaderLine('Content-Type', 'application/json; charset=utf-8');

        $height   = $this->params()->fromQuery('height');
        $datetime = $this->params()->fromQuery('datetime');
        $sector   = $this->params()->fromQuery('sector', 'Côte d’Opale');

        if ($height === null || $datetime === null) {
            $response->setContent(json_encode([
                'success' => false,
                'error'   => 'Paramètres "height" et "datetime" obligatoires',
            ]));
            return $response;
        }

        // Client Ollama (même machine que XAMPP, port par défaut)
        $ollama = new OllamaClient('http://localhost:11434');

        $prompt =
            "Génère un titre très court (max 12 mots) pour une observation de marée.\n\n" .
            "Contexte :\n" .
            "- Secteur : {$sector}\n" .
            "- Date/heure (UTC) : {$datetime}\n" .
            "- Hauteur d'eau : {$height} mètres\n\n" .
            "Contraintes :\n" .
            "- Titre en français\n" .
            "- Style scientifique simple (géosciences / observation côtière)\n" .
            "- Pas de puces, pas d'explication, juste le titre.\n";

        try {
            $title = $ollama->generate('llama3', $prompt, 64);

            $response->setContent(json_encode([
                'success' => true,
                'title'   => $title,
            ]));
            return $response;

        } catch (\Throwable $e) {
            // ICI on renvoie VRAIMENT l’erreur d’Ollama/cURL
            $response->setContent(json_encode([
                'success' => false,
                'error'   => 'Erreur Ollama : ' . $e->getMessage(),
            ]));
            return $response;
        }
    }
}
