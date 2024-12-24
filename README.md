# Bases de Données Spatiales avec PostgreSQL/PostGIS

## Introduction
Ce guide regroupe les instructions pour les trois Travaux Dirigés (TD) concernant les bases de données spatiales. Ces TD couvrent l'installation de PostGIS, la création de tables avec colonnes spatiales, et l'utilisation des fonctions SQL spatiales pour analyser des données géographiques.

---

## Contenu des TD

### **TD-1 : Installation de PostGIS et Création d'une Base de Données Spatiale**
1. **Objectif :**
   - Installer PostgreSQL et PostGIS.
   - Créer une base de données spatiale.
2. **Étapes :**
   - Télécharger et installer PostgreSQL.
   - Ajouter l'extension PostGIS via Stack Builder.
   - Créer une base de données avec **pgAdmin 4**.
   - Ajouter l'extension PostGIS à la base de données :
     ```sql
     CREATE EXTENSION postgis;
     ```
3. **Vérification :**
   - Confirmer la présence de la table `spatial_ref_sys` dans le schéma `public`.

---

### **TD-2 : Création de Tables avec Colonnes Spatiales**
1. **Objectif :**
   - Créer des tables avec des colonnes géométriques (points, polygones, lignes).
   - Manipuler ces tables avec QGIS.
2. **Étapes :**
   - Créer une table pour des points d'intérêt :
     ```sql
     CREATE TABLE points_of_interests (
         id SERIAL PRIMARY KEY,
         nom VARCHAR(255),
         geom GEOMETRY(Point, 4326)
     );
     ```
   - Insérer des données via QGIS en mode édition.
   - Vérifier les données dans **pgAdmin** avec :
     ```sql
     SELECT * FROM points_of_interests;
     ```
   - Répéter le processus pour des tables avec colonnes de type `Polygon` et `LineString`.

---

### **TD-3 : Fonctions SQL Spatiales**
1. **Objectif :**
   - Analyser des données géographiques en utilisant des fonctions SQL spatiales de PostGIS.
2. **Étapes :**
   - Importer un shapefile dans PostgreSQL avec le **PostGIS Shapefile Import/Export Manager**.
   - Identifier le point d'incendie (centroïde d'une parcelle) :
     ```sql
     SELECT ST_Centroid(geom) AS fire_point
     FROM parcels
     WHERE gid = 462273;
     ```
   - Filtrer les parcelles dans un rayon de 1 km autour du point d'incendie :
     ```sql
     ST_DWithin(geom, (SELECT ST_Centroid(geom) FROM parcels WHERE gid = 462273), 1000);
     ```
   - Calculer le nombre de parcelles et la superficie totale des zones à risque :
     ```sql
     SELECT COUNT(*), SUM(ST_Area(geom))
     FROM parcels
     WHERE ST_DWithin(geom, (SELECT ST_Centroid(geom) FROM parcels WHERE gid = 462273), 1000);
     ```

---

## Prérequis
- **PostgreSQL** et **PostGIS** installés.
- **pgAdmin 4** pour la gestion des bases de données.
- **QGIS** pour la visualisation et l'édition des données géographiques.
- Une connexion Internet pour télécharger les fichiers nécessaires (comme les shapefiles).

---

## Outils Utilisés
- **PostgreSQL/PostGIS** : Système de gestion de base de données spatiale.
- **pgAdmin 4** : Interface graphique pour PostgreSQL.
- **QGIS** : Logiciel SIG pour manipuler et visualiser des données géospatiales.

---

## Auteur
Ces Travaux Dirigés ont été préparés par **Pr. Hatim Lechgar**, SIG-3, Année 2024-2025.

---

## Ressources Supplémentaires
- [Documentation officielle de PostGIS](https://postgis.net/docs/reference.html)
- [Documentation officielle de PostgreSQL](https://www.postgresql.org/docs/)
- [Site officiel de QGIS](https://qgis.org/)

---

## Remarque
Pour toute assistance, contactez votre enseignant ou consultez les ressources officielles mentionnées ci-dessus.
