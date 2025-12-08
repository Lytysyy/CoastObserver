
# CoastObserver

Module Omeka S pour la gestion et l’observation des marées sur différents secteurs géographiques, avec intégration d’un service d’intelligence artificielle (Ollama).

## Fonctionnalités

- Enregistrement et consultation d’observations de marée (date, secteur, hauteur, notes)
- Gestion des secteurs géographiques
- Accès à des endpoints JSON pour l’administration
- Intégration d’un service IA (Ollama) pour la génération de réponses à des prompts
- Interface d’administration dédiée

## Installation

1. Copier le dossier `CoastObserver` dans le répertoire `modules` de votre installation Omeka S.
2. Activer le module via l’interface d’administration d’Omeka S.
3. Configurer les paramètres si nécessaire dans le fichier `config/module.config.php`.


## Utilisation

- Accédez à l’interface d’administration Omeka S, section “Modules”.
- Activez “CoastObserver”.
- Utilisez les routes :
  - `/admin/coast-observer` : page d’accueil du module
  - `/admin/coast-observer/tide-height` : endpoint JSON pour obtenir la hauteur de marée
  - `/admin/coast-observer/suggest-title` : endpoint pour suggestions via IA
 

## Fichier de données de test

Le fichier `maree_cote_dopale_insert.sql` contient des requêtes SQL permettant d’insérer des hauteurs d’eau toutes les minutes entre 10h00 et 12h00 pour le secteur `cote_dopale`.

Ce fichier est utile pour :
- Tester le module avec des données réalistes
- Permettre à un professeur ou à un utilisateur de peupler rapidement la base de données

**Utilisation** :
- Importez le fichier dans votre base via phpMyAdmin ou tout outil SQL compatible.
- La table doit contenir les champs : `id` (auto-incrémenté), `date_heure`, `hauteur_eau`.

