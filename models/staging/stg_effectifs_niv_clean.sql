{{config(materialized = 'table')}}

SELECT *
FROM {{ref('stg_effectifs_clean')}}
WHERE patho_niv2 IS NOT NULL 
    AND patho_niv3 IS NOT NULL