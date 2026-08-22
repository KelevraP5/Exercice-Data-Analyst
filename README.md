# PROJET CAR&PAIR - DATA PIPELINE ETL (Extract Transform Load) & DASHBOARD POWER BI

## CONTEXTE

Cet exercice a pour but de me former aux différents outils utilisés par un Data Analyst et a pour but final de confronter ma vision du métier avec la réalité.

J'ai choisi pour cet exercice, d'utiliser une entreprise fictive de garage : Car&Pair. Ce garage possède 4 antennes qui supervisent un garage dans leurs secteurs. Chaque garage gère des réparations, des prêts de voitures si besoin ainsi que de la location de voitures.

> Toutes les données sont fausses et générées aléatoirement.

## CONSTRUCTION DU PROJET

Cet exercice se découpe en plusieurs phases :

1. Modélisation puis génération d'une base de donnée relationnelle (MySQL)

2. Génération des données dans différents formats (csv, xlsx, json et sql) puis insertion dans une base de données brute

3. Extraction des données via la base de données brute MySQL

4. Nettoyage des données via Python

5. Insertion dans une base de données propre

6. Insertion de certaines données dans un Google Sheets

7. Utilisation de ces données pour calculer certains Key Performance Indicators (dépenses et revenus des antennes et garages, taux de locations et prêts de voitures, calcul du chiffre d'affaires)

8. Utilisation de ces calculs Google Sheets afin de réaliser une présentation via Power BI

## APERÇU DU PROJET

Le dossier data contient différents fichiers relatifs à cet exercice :

* Les formats des données brutes (dans donnees_brutes)

* Le fichier Power BI en format pbix et en PDF (dans power_bi)

* Les exportations SQL des deux bases de données (dans sql) 

* Le script pour initialiser la base de données nettoyée avec les relations et certaines données indispensables déjà mises dedans (dans sql)

* La fiche de calculs réalisée dans Google Sheets en format CSV (dans google_sheet)

* L'image de la modélisation de la base de données nettoyée que j'ai réalisée sur DrawDB en format PDF (dans modele_bdd)

[Vous pouvez accéder à mon fichier Google Sheets en cliquant sur cette phrase.](https://docs.google.com/spreadsheets/d/1QJb_7dYBgzxUOLLqtKB4dHbFt1GC3oG7HezdIqZSa-E/edit?usp=preview)

J'ai également fait des vues personnalisées sur quelques tableaux, si vous souhaitez visionner les tableaux avec ces vues lorsque vous irez sur les feuilles `DATA-employés`, `DATA-locations et prêts` et `DATA-réparations`, cliquez sur `Données` puis sur `Modifier la vue` et cliquez sur la première.

## FAIRE TOURNER MON PROJET CHEZ VOUS

Vous aurez besoin :

* D'une connexion à un serveur MySQL (votre client MySQL comme : Xampp, Wamp, etc.)

* Un service pour visualiser les bases de données (PHPMyAdmin, DBeaver, etc.)

* Préférablement un Environnement de Développement Intégré (IDE) compatible avec Python 3.10+ (Visual Code, PyCharm, etc.)

* Un compte Google (pour pouvoir gérer le Google Console afin de transmettre, via Python, les données SQL sur le Google Sheets et visualiser ce dernier)

* Power BI Desktop (version de juillet 2026)

Si vous voulez simplement voir le résultat final, je vous laisse le soin de regarder les différents fichiers présents dans ce dépôt.

Si vous souhaitez voir les données avant et après nettoyage, je vous conseille de suivre l'étape 1 ci-dessous, mais après avoir créé la base de données brute `caretpair_brut`, importez le fichier `dump-caretpair_brut.sql` puis faites pareil avec la base de données `caretpair` et importez le fichier `dump-caretpair.sql`.

Si vous voulez tester mon code de zéro, continuez de lire les instructions.

### *1. Création des bases de données*

Allumez votre client MySQL.

Vous devrez créer deux bases de données, une pour accueillir les données brutes afin de garder une trace et une autre pour accueillir les données nettoyées.

Afin d'accueillir les données brutes, il faut simplement créer une nouvelle base de données que vous appellerez : `caretpair_brut`. Pas besoin de créer de table pour celui-ci, l'insertion s'en chargera.

> Vous pouvez changer le nom des bases de données si vous le souhaitez, mais pensez à changer la valeur de DB_RAW_NAME dans le .env.public que vous renommerez .env par la suite.

Profitez-en pour créer la base de données clean, pour ce faire utilisez le script `script_creation_bdd_clean.sql` dans le dossier sql dans data. Cela vous créera la base de données avec uniquement les informations essentielles de base (les informations des antennes, des garages, les différents tarifs, etc.).

### *2. Configuration, extraction et insertion des données brutes dans la base de données*

Maintenant, sur votre IDE, copiez cette commande dans le terminal :
```bash 
pip install -r requirements.txt
```

Cela installera automatiquement toutes les dépendances utilisées pour ce projet.

Il y a deux fichiers principaux (excepté le .env) qui vont servir pour faire la liaison entre le code et les bases de données, à savoir `config.py` et `database.py`.

Le fichier `config.py` sert à stocker les informations de chemins du dossier de données brutes ainsi que les chemins permettant de se connecter aux bases de données.

Le fichier `database.py` quant à lui, sert à nous connecter directement aux bases de données et faire des requêtes. En effet, en Python, nous avons besoin d'un "engine" pour pouvoir aller faire nos requêtes SQL, les stocker dans une variable est plus efficace, car nous en avons beaucoup besoin.

> NE LANCEZ PAS generate_dataset.py. Ce script permet de créer les fichiers des fausses données déjà présentes de base dans donnees_brutes

Si ce n'est pas déjà fait, renommez le .env.public en .env et remplissez les variables avec vos informations (votre port de connexion SQL, votre identifiant et mot de passe SQL, le nom de vos bases de données si celles-ci sont différentes)

Ensuite, lancez extract_raw_data.py, cela va convertir les données brutes en format SQL et les insérer dans la base de données correspondante.

### *3. Récupération des données SQL et nettoyage*

Maintenant que les bases de données sont nourries, il ne reste plus qu'à récupérer et nettoyer les données. Pour ça, il ne reste plus qu'à lancer le fichier `clean_data.py`.
Ce fichier applique les fonctions écrites dans `clean_func.py` pour nettoyer et mettre en forme les données transmises.

Si vous jetez un coup d'œil au fichier, vous verrez qu'il y a deux listes, une pour les colonnes à nettoyer et une pour les autres colonnes. En effet, certaines données n'avaient pas besoin d'être nettoyées, donc pour des raisons de performance, elles n'ont pas été appelées au début.

La fonction load_and_tag_ville, sert à aller chercher les données d'une ville depuis la base de données SQL, mais permet aussi de placer un tag de ville qui sert à améliorer la lisibilité quand on contrôle la provenance des données (être sûr que les clients au Havre ne soient pas également ceux de Nancy par exemple).

### *4. Préparation puis insertion en base de données clean*

Dans le fichier union.py, on regroupe les données nettoyées des différentes villes dans une variable puis on fait la même chose avec les données qui n'avaient pas besoin de nettoyage, et enfin, on regroupe le tout ensemble afin de faciliter l'insertion en base de données propre.

Ensuite, dans le fichier `rename_columns.py` on sépare les colonnes dans des variables pour rendre l'insertion plus claire dans les bases de données puis on renomme certaines colonnes de notre tableau de données pour qu'elles correspondent aux colonnes de notre base de données finale.

Pour finir, on utilise les variables de ce fichier pour les rentrer en base de données avec le fichier `db_insert_data.py`.

### *5. Insertion de données dans Google Sheets*

Créez un Google Sheets, puis allez sur [Google Cloud Service](https://console.cloud.google.com/), cliquez sur le sélecteur de projet à côté du logo puis créez un projet.

Sélectionnez votre projet nouvellement créé puis allez sur `API et services` puis sur `Activer les API et services`. Pour que l'insertion marche, il va falloir deux API :
*   ```
    Google Sheets API
    ```
*   ```
    Google Drive API
    ```

Une fois cela fait, dans `API et services` allez dans :
- `Identifiants`
- `Créer des identifiants`
- `Compte de service`

Créez le compte de service puis une fois revenu sur la page de création des identifiants.
Cliquez sur le compte de service nouvellement créé, puis cliquez sur
* `Clés`
* `Ajouter une clé`
* type de clé `JSON`
* `Créer`.

Cela va télécharger un fichier JSON, il faut placer ce fichier à la racine du projet qu'il faudra nommer `credentials.json`.

Pour que toute l'écriture puisse fonctionner, il faut également mettre l'adresse mail du compte de service en tant qu'éditeur sur le Google Sheets. Cela se fait facilement dans `Partager`.

Ensuite dans le fichier `sheets_insert_data.py`, vérifiez le nom du Google Sheets et renseignez son nom dans la variable `spreadsheet_name` pour plus de praticité, puis remplacez si besoin le nom des feuilles où vont finir les données récupérées par les requêtes inscrites dans le fichier `queries.py`.

Lancez le script et vous avez toutes les données sur votre Google Sheets.

### *6. Réalisation des calculs et importation sur Power BI*

Avec les données maintenant présentes sur un Google Sheets, il ne reste plus qu'à calculer les différents KPI recherchés.

Une fois ces calculs faits, on peut copier l'URL du Google Sheets et l'importer dans Power BI Desktop. Cliquez sur :

* `Rapport vierge`
* `Obtenir les données`
* Chercher `Google Sheets`
* `Se connecter`
* Renseigner l'URL

Voilà l'importation du Google Sheets est réalisée sur Power BI.