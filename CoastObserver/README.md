
# CoastObserver — Module Omeka S

Le module **CoastObserver** permet d’afficher et d’utiliser des données de hauteur d’eau dans Omeka S à partir d’une base MySQL fournie.

Ce repository contient le code source du module ainsi que les fichiers nécessaires au test du module.

---

## 📦 Installation du module

### 1. Télécharger le module
Télécharger ce repository ou utiliser le lien :

https://github.com/Lytysyy/Omeka-S-module-CoastObserver

### 2. Placer le module dans Omeka S
Décompresser l’archive si besoin, puis copier le dossier :

```
CoastObserver
```

dans le répertoire :

```
/modules/
```

⚠️ **Le dossier interne du module doit s’appeler exactement :**  
```
CoastObserver
```
(Omeka S utilise le nom du dossier pour charger la classe du module.)

---

## 🗄️ Import de la base de données (obligatoire)

Le module utilise une base MySQL locale contenant les données de hauteur d’eau.

### Étapes :

1. Ouvrir **phpMyAdmin**  
2. Sélectionner la base utilisée par votre installation Omeka S  
3. Aller dans l’onglet **Importer**  
4. Importer le fichier SQL fourni, situé dans :  
   ```
   sql/hauteurs_eau.sql
   ```
   *(Remplacer par le nom exact si différent.)*

5. Valider pour créer les tables nécessaires.

Sans cette base SQL, le module ne pourra pas afficher les données de hauteur d'eau.

---

## ⚙️ Structure du module

```
CoastObserver/
│
├── config/
├── src/
│   └── Controller/
│       └── Admin/
├── sql/
│   └── hauteurs_eau.sql
├── Module.php
├── module.ini
└── README.md
```

---

## 📌 Notes importantes pour les enseignants / évaluateurs

- Le nom du **repository** est : `Omeka-S-module-CoastObserver`
- Le nom du **module interne** (dossier dans `/modules/`) est : `CoastObserver`
- Le module nécessite l’import d’une base SQL pour fonctionner
- Aucune *release* n’a été créée : le module est disponible directement via le repository GitHub

---

## 👤 Auteur

Développé par **Lytysyy** dans le cadre du projet pédagogique Omeka S.

