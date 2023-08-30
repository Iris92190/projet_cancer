{{config(materialized = 'table')}}

SELECT *
FROM `pathologie.dbt_staging.stg_comorb_clean` 
WHERE patho_niv1="Cancers"