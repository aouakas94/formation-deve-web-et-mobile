--EXERCICE 1
--1
select * from un ;
-- selectionner toutes les colonne du tableau UN
--2
select a from un ;
-- selectionner la colonne a du tableau UN
--3
select a from un where c=1 ;
--resultat :x ,z
-- selectionner la colonne a du tableau UN d'ou la colonne c a pour valeur 1

-- 4
select a from un where c=1 OR c=2;
resultat=x,x,z
-- selectionner la colonne a du tableau UN d'ou la colonne c a pour valeur 1 ou la valeur 2 MEME en double
 -- 5
 SELECT DISTINCT a FROM un WHERE c=1 OR c=2 ;
 resultat= x,z
 -- selectionner la colonne a du tableau UN d'ou la colonne c a pour valeur 1 ou la valeur 2 mais pas en double
--6
6. SELECT a FROM un ORDER BY b ;
resultat= x,y,x,p
-- selectionner la colonne a du tableau UN ordonné par les valeurs de la colonne b
--7
SELECT a, e FROM un, deux ;
resultat=x,x,y,z,8,4,1
-- selectionner les colonnes a et e des tableaux UN et DEUX
--8
SELECT a, e FROM un, deux WHERE c=e ;
resultat=x,y,z
-- selectionner les colonnes a et e des tableaux UN et DEUX D'OU les les valeurs de la colonne c = au valeurs de la colonne e


--EXERCICE 1
-- select NomEditeur ,Ville ,Region from editeur;
-- 8 lignes

-- EXERCICE 2
--Afficher le nom, le prénom, et la date d’embauche des employés embauchés en 90, dont le nom
--commence par ‘L’, et la position est comprise entre 10 et 100.

select PnEmploye,NomEmploye,DateEmbauche
from employe
where DateEmbauche BETWEEN date'1990-01-01' AND date'1990-12-31'  AND PositionEmploye > 10 AND PositionEmploye <100 and NomEmploye LIKE 'L%'
-- une ligne

-- EXERCICE 3
select PnEmploye,DateEmbauche
from employe
order by  IdEditeur,NomEmploye;
-- 43 LIGNES

-- EXERCICE 4
SELECT NomAuteur ,Adresse,Pays
FROM auteur
where Pays IN ('FR','BE', 'CH')
ORDER BY Pays;
-- resultat = 20 LIGNES
-- EXERCIE 5
SELECT NomEmploye,max(DateEmbauche),
from employe
group by PositionEmploye
 -- 14 LIGNES
 --EXERCIE 6
 select IdTitre,max(Droit)
from droitprevu
group by IdTitre
-- 12 LIGNES

-- EXERCICE 7
SELECT NomEditeur,count(NomEditeur),Pays
from editeur
group by Pays
having Pays  like '%r%' or Pays like '%s%';
 -- resultat = 3 LIGNES

 --EXERCICE 9
select NomAuteur,Prix,Titre
from auteur,titre,titreauteur
-- where auteur.IdAuteur=titreauteur.IdAuteur and titreauteur.IdTitre= titre.IdTitre and Ville='paris';
-- resultat = 4 LIGNES

-- select NomAuteur,Prix,Titre
-- from auteur -- ,titre,titreauteur
-- -- where auteur.IdAuteur=titreauteur.IdAuteur and titreauteur.IdTitre= titre.IdTitre and Ville='paris';
-- join titreauteur on IdAuteur=titreauteur.IdAuteur join titre on  titreauteur.IdTitre= titre.IdTitre
-- where Ville='paris';

-- EXERCICE 10
-- Pour chaque éditeur, afficher le nom de l’éditeur, les titres des livres qu’il publie, les noms des magasins où ils
-- sont vendus, le nombre d’exemplaires vendus dans chaque magasin.

select NomEditeur,Titre,NomMag,Qt
from editeur,titre,vente,magasin
where editeur.IdEditeur=titre.IdEditeur and titre.IdTitre=vente.IdTitre and vente.IdMag=magasin.IdMag
order by NomMag;
-- 18 LIGNES

-- EXERCICE 11
SELECT NomAuteur,sum(Qt)
from auteur,titreauteur,titre,vente
where auteur.IdAuteur=titreauteur.IdAuteur and titreauteur.IdTitre= titre.IdTitre  and titre.IdTitre =vente.IdTitre
GROUP BY NomAuteur
having  sum(qt) >= 20;
-- 10 LIGNES

-- EXERCICE 12
select droit
from aut
-- EXERCICE 13
select Titre,Prix
from titre
where prix=(select max(Prix)
    from titre) ;
    -- resultat =1 lingnes

    -- EXERCIE14

    -- EXERCICE 15
elect  NomMag,CumulAnnuelVente as vente_max,titre
from titre
  join vente  on titre.IdTitre = vente.IdTitre join magasin on vente.IdMag=magasin.IdMag
where (select max(CumulAnnuelVente)from titre)
group by NomMag;
-- RESULTAT =6 LIGNES
