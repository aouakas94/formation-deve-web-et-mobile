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
SELECT CLI_NOM, CLI_PRENOM
FROM T_CLIENT
WHERE CLI_NOM BETWEEN 'A' AND 'E'
-- rechercher et selectionner les elements d'une colonne sur un interval precis











