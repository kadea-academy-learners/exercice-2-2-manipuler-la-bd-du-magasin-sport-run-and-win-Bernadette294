-- Sélection des colonnes utiles uniquement pour la newsletter
SELECT nom_produit AS "Produit", prix AS "Prix (€)"

-- Source de données : table des produits
FROM produits

-- Filtrer uniquement les articles de la catégorie Tennis
WHERE categorie = 'Tennis'

-- Ajouter une condition sur le prix (produits premium)
AND prix > 100;


-- Sélection des informations nécessaires pour décider du déstockage
SELECT nom_produit AS "Produit", stock AS "Stock restant", prix AS "Prix (€)"

-- Table des produits
FROM produits

-- Filtrer les produits contenant le mot "Rando"
WHERE nom_produit LIKE '%Rando%'

-- Identifier les produits en faible stock
AND stock < 5;


-- Sélection des informations de contact des clients
SELECT nom, prenom, email

-- Table des clients
FROM client

-- Filtrer les clients habitant dans les villes ciblées par la campagne
WHERE ville IN ('Bukavu', 'Matadi');


-- Sélection des produits concernés par la remise
SELECT nom_produit AS "Produit", prix AS "Prix (€)"

-- Table des produits
FROM produits

-- Filtrer la catégorie Combat
WHERE categorie = 'Combat'


-- Filtrer les produits dans la tranche de prix ciblée
AND prix BETWEEN 20 AND 50;

-- Sélection des informations nécessaires pour la relance client
SELECT nom, ville, date_inscription

-- Table des clients
FROM client

-- Filtrer les clients de Lubumbashi
WHERE ville = 'Lubumbashi'

-- Identifier les anciens clients (inscrits avant 2025)
AND date_inscription < '2025-01-01';

