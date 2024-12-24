# Création de Tables avec Colonnes Spatiales

## Introduction
Ce tutoriel guide l'utilisateur dans la création et la manipulation de tables spatiales à l'aide de PostgreSQL/PostGIS et QGIS. Vous apprendrez à gérer différents types géométriques comme les points, polygones, et lignes.

---

## Prérequis
- PostgreSQL avec l'extension PostGIS installée.
- QGIS installé sur votre machine.
- Une connexion à une base de données PostgreSQL/PostGIS.

---

## Étapes de Création

### 1. Création d'une Table Spatiale (Points)
1. Dans **pgAdmin**, exécutez la commande suivante pour créer une table avec une colonne de type `Point` :
   ```sql
   CREATE TABLE points_of_interests (
       id SERIAL PRIMARY KEY,
       nom VARCHAR(255),
       geom GEOMETRY(Point, 4326)
   );
