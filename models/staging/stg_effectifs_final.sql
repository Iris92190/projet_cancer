{{config(materialized = 'table')}}

SELECT c.annee,
  c.patho_niv1,
  c.patho_niv2,
  c.patho_niv3,
  g.region AS region,
  g.department AS dept,
  c.region AS num_region, 
  c.dept AS num_dept,
  c.ntop AS nb_patients,
  c.prev AS prevalence,
  c.libelle_classe_age AS tranche_age,
  c.libelle_sexe AS sexe
FROM {{ref('stg_effectifs_niv_clean')}} c 
LEFT JOIN (
  SELECT department_code, department, cast(region_code AS int64) as region_code, region 
  FROM `pathologie.pathologie.geo_clean`) g
ON c.dept = g.department_code AND c.region = g.region_code