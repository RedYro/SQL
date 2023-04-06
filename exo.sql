-- Récupérer le nom , le prénom et le service des employé qui ont une lettre t à la fin du prénom et stravailent dans le service  commercial et comptabilité
-- SELECT nom, prenom, service FROM `employes` WHERE prenom LIKE '%t' AND service IN ('comptabilite', 'commercial'); 

-- Récupérer le nom , le prénom et la date d'embauche des employé qui ont été embaucher après 2007 et ont le sexe = 'f ' 
-- SELECT nom, prenom, date_embauche FROM `employes` WHERE sexe = 'f' AND date_embauche BETWEEN '2007-01-01' AND '2023/01/01'; 

-- Récuperer les différents salaire touchées dans la base entreprise 
-- SELECT salaire FROM `employes` WHERE 1; 

--Récuperer les noms des employés qui ont un salaire entre 1400 et 4000
-- SELECT nom, salaire FROM `employes` WHERE salaire BETWEEN 1400 AND 4000; 
