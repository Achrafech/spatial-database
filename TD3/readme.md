# Fonctions de SQL Spatial

## Introduction
Ce tutoriel explore l'utilisation des fonctionnalités spatiales de PostGIS pour répondre à des questions concernant les parcelles en Floride situées à moins de 1 km d'un point d'incendie. Vous apprendrez à manipuler des shapefiles, exécuter des requêtes spatiales SQL et visualiser les données dans QGIS.

---

## Prérequis
- PostgreSQL avec PostGIS installé.
- Accès à **PostGIS Shapefile Import/Export Manager**.
- Installation de QGIS.

---

## Étapes

### 1. Importer le Shapefile dans PostGIS
1. Téléchargez le shapefile des parcelles de Floride.
2. Ouvrez **PostGIS Shapefile Import/Export Manager** :
   - Sélectionnez le fichier shapefile téléchargé.
   - Importez-le dans une table PostgreSQL.

---

### 2. Vérification des Données Importées
1. Dans **pgAdmin**, exécutez la commande suivante pour vérifier les données :
   ```sql
   SELECT COUNT(*) FROM parcels;
