
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
    string email
    string name
    datetime created
    string role
  }
  OBSERVATION {
    int id
    string title
    date dateObservation
    string lieu
    string notes
  }
  PHOTO {
    int id
    string file_path
    string media_type
    datetime created
  }
  SECTOR {
    string label
  }

  USER ||--o{ OBSERVATION : "crée"
  OBSERVATION ||--o{ PHOTO : "a_pour_photo"
  SECTOR ||--o{ OBSERVATION : "localise"









