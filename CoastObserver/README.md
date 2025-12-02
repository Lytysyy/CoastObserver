# CoastObserver — Module Omeka S

Ce module permet d'afficher des données de hauteur d’eau à partir d’une base MySQL.

## Installation du module

1. Télécharger le module depuis le repository :
   https://github.com/Lytysyy/CoastObserver

2. Copier le dossier **CoastObserver** dans le répertoire :
   /modules/

3. Aller dans Omeka S → Modules → Activer le module.

## Import de la base de données (obligatoire)

Le module utilise une base MySQL locale contenant les données de marée.

1. Ouvrir phpMyAdmin.
2. Sélectionner la base utilisée par Omeka S.
3. Aller dans l’onglet "Importer".
4. Importer le fichier SQL situé dans le dossier :
   /sql/hauteurs_eau.sql
   (Remplacer par le nom exact de votre fichier SQL si besoin.)

5. Valider pour créer les tables nécessaires.

## Structure du module

CoastObserver/
- config/
- src/
- sql/
- module.ini
- README.md

## Auteur
Développé par Lytysyy dans le cadre du projet pédagogique Omeka S.

