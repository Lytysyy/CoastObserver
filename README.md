
# CoastObserver

Plateforme hypermédia participative de suivi du littoral
 
Ce projet a pour objectif de créer une plateforme web hypermédia inspirée du programme CoastSnap, permettant le suivi participatif du littoral à partir de **photos géolocalisées** envoyées par les utilisateurs.

Les citoyens peuvent déposer des **images** prises depuis des points fixes sur la côte. Ces photos sont associées à des **métadonnées** (date, lieu, auteur, coordonnées GPS) et sont **enregistrées dans une base de données**.  


Le projet illustre une approche **hypermédia**, car il relie différents types de médias (texte, image, carte, données) et permet une **navigation non linéaire et interactive** entre les informations.



##  Objectifs du projet
- Développer une application web permettant la **collecte participative de photos** du littoral.  
- Créer une **base de données** pour stocker les images et leurs métadonnées selon le secteur , site .  
- Valoriser les **données multimédias**.  
- Promouvoir la **science citoyenne** et la **sensibilisation environnementale** via les technologies du web.  



##  Public cible
- **Citoyens et touristes** souhaitant participer à l’observation du littoral.  
- **Étudiants et enseignants** utilisant la plateforme pour des projets pédagogiques.  
- **Chercheurs et collectivités locales** intéressés par l’évolution du trait de côte.  
- **Associations environnementales** œuvrant pour la protection des zones côtières.


##  Technologies utilisées
- PHP / MySQL: gestion des utilisateurs, stockage et traitement des données.  
- JavaScript : interactions et affichage dynamique.     
- HTML5 / CSS3 : structure, design et documentation.  
- Mermaid: création du diagramme entité–relation (ER).  

##  Données et multimédia
- **Images** : photos des côtes prises par les utilisateurs.  
- **Métadonnées** : auteur, date, heure, coordonnées GPS, commentaire, site observé.  
- **Formats de données** : JSON  
- **Médias combinés** : texte, image, géolocalisation et données.  

Ces éléments multimédias sont interconnectés et consultables par navigation interactive, démontrant la **dimension hypermédia** du projet.


##  Diagramme entité–relation

erDiagram

  USER {
    int id
    varchar email
    varchar name
    datetime created
    varchar role
  }

  RESOURCE {
    int id
    int owner_id
    int resource_class_id
    varchar resource_type
    datetime created
  }

  ITEM {
    int id  "hérite de RESOURCE.id"
    int primary_media_id
  }

  MEDIA {
    int id  "hérite de RESOURCE.id"
    varchar storage_id
    varchar media_type
  }

  ITEMSET {
    int id "hérite de RESOURCE.id"
    bool is_open
  }

  VALUE {
    int id
    int resource_id
    int property_id
    text value
  }

  PROPERTY {
    int id
    int vocabulary_id
    varchar local_name
    varchar label
  }

  USER ||--o{ RESOURCE : "possède"
  RESOURCE ||--o| ITEM : "type Item"
  RESOURCE ||--o| MEDIA : "type Media"
  RESOURCE ||--o| ITEMSET : "type ItemSet"

  ITEM ||--o{ MEDIA : "contient"
  ITEM ||--o{ VALUE : "métadonnées"

  ITEMSET ||--o{ ITEM : "groupe via item_item_set"

  PROPERTY ||--o{ VALUE : "définit"









