
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

## Modèle entité-association

### Prompt utilisé pour générer le modèle entité-association (ERD) avec Claude

> Génère un diagramme entité-association (ERD) pour un module Omeka qui gère des observations de marée.  
> Les fonctionnalités du module sont :  
> - Enregistrement d’observations de marée (date, secteur, hauteur, notes)  
> - Gestion des secteurs géographiques  
> - Utilisation d’un service d’intelligence artificielle pour générer des réponses à des prompts  
> - Administration par des utilisateurs (admin)  
> Propose les entités, leurs attributs et les relations entre elles.

Diagramme généré :

```mermaid
erDiagram
  ADMIN {
    int id
    string username
    string email
    string role
  }
  TIDE_OBSERVATION {
    int id
    datetime datetime
    string sector
    float tide_height
    string notes
  }
  SECTOR {
    string label
  }
  AI_PROMPT {
    int id
    string model
    string prompt
    string response
    datetime created
  }

  ADMIN ||--o{ TIDE_OBSERVATION : "enregistre"
  SECTOR ||--o{ TIDE_OBSERVATION : "localise"
  ADMIN ||--o{ AI_PROMPT : "utilise"
