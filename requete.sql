-- Requête 1 : Sélectionner tous les utilisateurs actifs (ceux ayant un statut 'Actif') et leurs abonnements
SELECT Utilisateur.nom, Utilisateur.prenom, Utilisateur.email, Abonnement.date_debut, Abonnement.date_fin
FROM ufc.utilisateur INNER JOIN ufc.abonnement using(id_utilisateur)
WHERE Abonnement.statut = 'Actif';

-- Requête 2: Compte le nombre d'abonnement actif et inactif
SELECT statut, COUNT(*) 
FROM Abonnement 
GROUP BY statut;

-- Requête 3 : Trouver les combattants ayant remporté plus de 10 combats et les ranges dans l'ordre croissant
SELECT nom, prenom, victoire
FROM Combattant
WHERE victoire > 10
ORDER BY victoire ASC;


-- Requête 4 :Cette requête affiche les noms, prénoms et le nombre de victoires des combattants étant premier de leur classement, triés par ordre croissant du nombre de victoires.
SELECT Combattant.nom, Combattant.prenom, Combattant.victoire
FROM Combattant INNER JOIN Classement using(id_combattant)
WHERE Classement.classement = 1;


-- Requête 5 : Cette requête affiche les noms, prénoms et classements des combattants dans la catégorie 'Poids Léger', triés par classement.

SELECT Combattant.nom, Combattant.prenom, Classement.classement
FROM ufc.combattant INNER JOIN ufc.classement Classement using(id_combattant)
WHERE Classement.poids = 'Poids Léger'
ORDER BY Classement.classement;