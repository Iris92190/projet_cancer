{{config(materialized = 'table')}}

SELECT *, 
    CASE 
        WHEN patho_niv3 LIKE "%acti%" THEN "actif"
        ELSE "sous-surveillance"
    END AS status
FROM {{ref('stg_effectifs_final')}} 
WHERE patho_niv1 = "Cancers"