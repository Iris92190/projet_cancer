{{config(materialized = 'table')}}

SELECT *
,CASE
  WHEN patho_niv3 LIKE "%acti%" THEN "actif"
  WHEN patho_niv3 LIKE "%sous surveillance" THEN "sous-surveillance"
END AS status
FROM {{ref("stg_comorb_clean")}}
WHERE patho_niv1="Cancers"