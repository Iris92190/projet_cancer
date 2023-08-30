{{config(materialized = 'table')}}

SELECT *
FROM {{ref('stg_effectifs')}}
WHERE region <> 99
  AND libelle_sexe <> "tous sexes" 
  AND libelle_classe_age <> "tous âges"
  AND dept <> "999"