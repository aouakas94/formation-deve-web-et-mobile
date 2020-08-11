-- aouakas cherifi

-- exemple 1
-- SELECT CLI_NOM, CLI_PRENOM
-- FROM T_CLIENT
-- WHERE TIT_CODE = 'Melle.';  selectioner les colonnes  CLI_NOM et CLI_PRENOM de la table qui porte le nom  T_CLIENT et dont TIT_CODE=M.

-- exemple 2
-- SELECT * -- selectioner les colonnes de la table qui porte le nom  T_CLIENT et dont TIT_CODE=M.
-- FROM T_CLIENT
-- WHERE TIT_CODE = 'M.';

-- exemple3  : selectioner la colonne  CLI_PRENOM de la table qui porte le nom  T_CLIENT et dont TIT_CODE=M.
-- SELECT CLI_PRENOM
-- FROM T_CLIENT
-- WHERE TIT_CODE = 'M.';

-- exemple4
-- SELECT CLI_NOM as NOM, 'homme' as SEXE 
-- FROM T_CLIENT
-- WHERE TIT_CODE = 'M.'
-- SELECT CLI_NOM NOM, 'homme' SEXE
-- FROM T_CLIENT
-- WHERE TIT_CODE = 'M.'
-- selectionner la colonne CLI_NOM et modifier son nom en "NOM"

-- exemple 5
-- concatenation , selectionner les contenu des colonnes en meme temps  de la table  T_CLIENT
-- SELECT 
-- concat (TIT_CODE, ' ',CLI_PRENOM ,' ',CLI_NOM) AS nom 
-- from T_CLIENT

-- selectionner la colonne  CHB_ID,la colonne TRF_CHB_PRIX * 1.206 mais elle portera le nom de TARIF_TTC
-- SELECT CHB_ID, TRF_CHB_PRIX * 1.206 AS TARIF_TTC
-- FROM TJ_TRF_CHB
-- WHERE TRF_DATE_DEBUT = '2001-01-01'

-- LA CLAUSE FROM :la source

-- SELECT "SELECT", "DATE"
-- FROM "JOIN"
-- WHERE "NOT" = 'F'  utiliser les DOUBLE QUOTE (GUILLEMET) car DATE fait partie du longage sql
-- ca ne fonctione pas car la table join nexiste pas et on ne pe pas ecrire select select

-- SELECT CLI_NOM, CLI_PRENOM
-- FROM T_CLIENT
-- ORDER BY CLI_NOM, CLI_PRENOM  
-- ordrdonner du premier au dernier (ou 1,2)

-- LA CLAUSE WHERE

-- OPERATEURS DE COMPARAISON
-- SELECT CLI_NOM, CLI_PRENOM
-- FROM T_CLIENT
-- WHERE CLI_NOM >= 'A' AND CLI_NOM <'E' 
-- selectionner les deux colonees  CLI_NOM, CLI_PRENOM de la table T_CLIENT dont lelement de la colonne CLI_NOM>='A' et (en meme temps) le meme element de la colonne CLI_NOM<'E' par ordre alphabetique

-- OPERATEUR IN
-- SELECT TIT_CODE, CLI_NOM, CLI_PRENOM
-- FROM T_CLIENT
-- WHERE TIT_CODE IN ('Mme.', 'Melle.')
-- selectionner les trois colonnes de la table T_CLIENT dont la colonne TIT_CODE a pour elements 'Mme.'et 'Melle.'pour savoir si la colonne qui pour ces element existe puis les afficher 
 

-- OPERATEUR BETWEEN
-- SELECT CLI_NOM, CLI_PRENOM
-- FROM T_CLIENT
-- WHERE CLI_NOM BETWEEN 'A' AND 'E'
-- rechercher et selectionner les elements d'une colonne sur un interval precis

-- OPERATEUR LIKE

-- FONCTION CAST
SELECT 
CHB_NUMERO, CHB_POSTE_TEL
FROM T_CHAMBRE
WHERE CAST(CHB_POSTE_TEL AS signed) / 10 > CHB_NUMERO;


-- MISE EN MAJUSCULE / MINUSCULE

-- SELECT upper(CLI_PRENOM), lower(CLI_NOM)
-- FROM T_CLIENT
-- selectionner puis afficher les elements en majuscule et minuscule
-- SELECT *
-- FROM T_CLIENT
-- where upper(CLI_PRENOM) = upper(CLI_NOM)

-- SUPPRIMER LES BLANCS (OU TOUT AUTRE CARACTERES)
-- SELECT TEL_NUMERO,
--  concat('00~33 ', TRIM(LEADING '0' FROM TEL_NUMERO))
--  AS TEL_INTERNATIONAL
-- FROM T_TELEPHONE




-- EXTRAIRE UNE SOUS CHAINE
-- SELECT TEL_NUMERO,concat('   00-33 ',SUBSTRING(TEL_NUMERO FROM 2 FOR 14))
-- -- extraire une sous chaine dune position jusqua une autre 
--  AS TEL_INTERNATIONAL
-- FROM T_TELEPHONE


-- SELECT CLI_NOM, CLI_PRENOM, concat( SUBSTRING(CLI_PRENOM FROM 1 FOR 1) ,'.',
--  SUBSTRING(CLI_NOM FROM 1 FOR 1))

--  AS INITIALES
-- FROM T_CLIENT

-- OPERATEUR DE TRAITEMENT DES DATES
-- SELECT distinct CHB_ID
-- FROM TJ_CHB_PLN_CLI
-- WHERE EXTRACT(MONTH FROM PLN_JOUR) = 5
--  AND CHB_PLN_CLI_RESERVE = 1
--  AND CHB_PLN_CLI_NB_PERS = 3
  
-- HEURE ET DATE COURANTE:

-- SELECT distinct CHB_ID
-- FROM TJ_CHB_PLN_CLI
-- WHERE (CHB_PLN_CLI_RESERVE = 1)
-- AND PLN_JOUR BETWEEN CURRENT_DATE and CURRENT_DATE + 14
--  AND CHB_PLN_CLI_NB_PERS = 3
--  -- AND PLN_JOUR BETWEEN date'1999-01-02' and date(now())
 

 -- rechercher des elements dans un interval de date 
--  SELECT distinct CHB_ID
-- FROM TJ_CHB_PLN_CLI
-- WHERE (CHB_PLN_CLI_RESERVE = 1)
--  AND PLN_JOUR BETWEEN CURRENT_DATE and CURRENT_DATE + 14
--  AND CHB_PLN_CLI_NB_PERS = 3

 
--  SELECT AVG(TRF_CHB_PRIX) as MOYENNE,
--  MAX(TRF_CHB_PRIX) as MAXI,
--  MIN(TRF_CHB_PRIX) as MINI,
--  SUM(TRF_CHB_PRIX) as TOTAL,
--  COUNT(TRF_CHB_PRIX) as NOMBRE
-- FROM TJ_TRF_CHB
-- WHERE TRF_DATE_DEBUT = '2001-01-01'
-- afficher les valeurs maximale et minimale des element 
-- AFFICHER LA MOYENNE DES ELEMENT DUNE COLONNE AVEC "AVG" ?LA SOMME DES ELEMENTS DUNE COLONNE ET LES COMPTER AVEC "COUNT"
 
 
--  SELECT CLI_ID, CLI_NOM
-- FROM T_CLIENT
-- WHERE CLI_ENSEIGNE = ''
-- afficher les colonnes vide dans la table  T_CLIENT


-- OPERATEURS DE TRAITEMENT DES MARQUEURS NULL
-- SELECT 
--     FAC_ID,
--     SUM(LIF_QTE * (LIF_MONTANT - IFNULL(LIF_REMISE_MONTANT, 0)) * (1 - IFNULL(LIF_REMISE_POURCENT, 0) / 100)) AS TOTAL_FAC,
--     SUM((LIF_QTE * (LIF_MONTANT - IFNULL(LIF_REMISE_MONTANT, 0)) * (1 - IFNULL(LIF_REMISE_POURCENT, 0) / 100)) * (LIF_TAUX_TVA / (100 + LIF_TAUX_TVA))) AS TOTAL_TAXES
-- FROM
--     T_LIGNE_FACTURE
-- WHERE
--     FAC_ID = 3
-- GROUP BY FAC_ID;

-- SELECT CHB_ID, CHB_NUMERO, CHB_COUCHAGE
-- FROM T_CHAMBRE
-- WHERE NOT (CAST(CHB_NUMERO AS VARCHAR(10))
-- LIKE '%4%')
--  AND CHB_NUMERO NOT IN ('7', '13')
--  AND CHB_COUCHAGE >= 3
 
--  SELECT CLI_NOM
-- FROM T_CLIENT
-- WHERE CLI_NOM NOT LIKE 'DU%'  
--  selectionne les elements qui qui commence pas par 'DU' les reste on ne prend pas en consideration

-- L'OPERATEUR CASE
-- SELECT CHB_NUMERO, CASE CHB_ETAGE
--  WHEN 'RDC' THEN 0
--  WHEN '1er' THEN 1
--  WHEN '2e' THEN 2
--  END AS ETAGE, CHB_COUCHAGE
-- FROM T_CHAMBRE
-- ORDER BY ETAGE, CHB_COUCHAGE 
-- on a modifié les elements de la case










