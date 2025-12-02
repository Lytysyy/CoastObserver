<?php
namespace CoastObserver\Service;

class OllamaClient
{
    /** @var string */
    private $baseUrl;

    /**
     * @param string $baseUrl URL de base d'Ollama, ex : http://localhost:11434
     */
    public function __construct(string $baseUrl = 'http://localhost:11434')
    {
        $this->baseUrl = rtrim($baseUrl, '/');
    }

    /**
     * Appelle l'API /api/generate d'Ollama et renvoie la réponse textuelle.
     *
     * @param string $model Nom du modèle (ex : "llama3", "mistral", etc.)
     * @param string $prompt Prompt envoyé au modèle
     * @param int $maxTokens Nombre max de tokens prédits
     * @return string
     *
     * @throws \RuntimeException si erreur cURL ou HTTP
     */
    public function generate(string $model, string $prompt, int $maxTokens = 64): string
    {
        $url = $this->baseUrl . '/api/generate';

        $payload = [
            'model'       => $model,
            'prompt'      => $prompt,
            'stream'      => false,
            'num_predict' => $maxTokens,
        ];

        $ch = curl_init($url);
        curl_setopt_array($ch, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_POST           => true,
            CURLOPT_HTTPHEADER     => ['Content-Type: application/json'],
            CURLOPT_POSTFIELDS     => json_encode($payload),
            // ⬇️ Temps max pour la réponse (on passe de 30s à 120s)
            CURLOPT_TIMEOUT        => 120,
            // ⬇️ Temps max pour établir la connexion (facultatif)
            CURLOPT_CONNECTTIMEOUT => 10,
        ]);

        $res = curl_exec($ch);

        if ($res === false) {
            $err  = curl_error($ch);
            $code = curl_errno($ch);
            curl_close($ch);
            throw new \RuntimeException("Erreur cURL ($code) vers Ollama : $err");
        }

        $status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);

        if ($status < 200 || $status >= 300) {
            throw new \RuntimeException("Ollama a répondu HTTP $status, corps : $res");
        }

        $data = json_decode($res, true);
        if (!is_array($data)) {
            throw new \RuntimeException("Réponse Ollama invalide (JSON) : $res");
        }

        if (!array_key_exists('response', $data)) {
            throw new \RuntimeException(
                "Clé 'response' absente dans la réponse Ollama : " . json_encode($data)
            );
        }

        return trim((string) $data['response']);
    }
}
