# Installation de PostGIS et Création d'une Base de Données Spatiale

## Introduction
Ce tutoriel explique étape par étape comment installer PostgreSQL, ajouter l'extension PostGIS, et créer une base de données spatiale à l'aide de pgAdmin 4. PostGIS est une extension permettant la gestion des données géographiques dans PostgreSQL.

---

## Prérequis
- Connexion Internet stable.
- Accès administrateur sur votre machine.
- Installation d'un navigateur Web pour utiliser pgAdmin.

---

## Étapes d'installation

### 1. Installer PostgreSQL
1. Téléchargez la version adaptée à votre système depuis [le site officiel de PostgreSQL](https://www.postgresql.org/).
2. Suivez les instructions d'installation. 
   - Lors de l'installation, définissez un mot de passe pour l'utilisateur `postgres`. Gardez-le en mémoire pour la suite.
3. Activez **Stack Builder** pour installer des extensions supplémentaires.

---

### 2. Installer PostGIS
1. Depuis **Stack Builder**, sélectionnez votre version de PostgreSQL.
2. Recherchez et installez l'extension PostGIS.
3. Une fois l'installation terminée, assurez-vous que tous les composants nécessaires sont activés.

---

### 3. Créer une Base de Données Spatiale
1. Lancez **pgAdmin 4** et connectez-vous avec le mot de passe de `postgres`.
2. Cliquez droit sur `PostgreSQL` > `Create` > `Database`.
   - Nom de la base : `spatial-db-1`.
3. Sélectionnez la base de données, ouvrez le **Query Tool**, et exécutez la commande :
   ```sql
   CREATE EXTENSION postgis;
