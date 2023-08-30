{{config(materialized = 'table')}}

SELECT cast(annee AS int64) AS annee,
    patho_niv1,
    patho_niv2,
    patho_niv3,
    region,
    dept,
    ntop,
    prev,
    libelle_classe_age,
    libelle_sexe
FROM `pathologie.pathologie.raw_effectifs`
WHERE patho_niv1 IS not null 
    AND patho_niv1 <> "Séjours en hospitalisation complète pour prise en charge de la Covid-19"
    AND patho_niv1 <> "Pas de pathologies repérées, traitements, maternité, hospitalisations ni traitement antalgique ou anti-inflammatoire"
    AND patho_niv1 <> "Maternité (avec ou sans pathologies)"
    AND patho_niv1 <> "Hospitalisations ponctuelles (avec ou sans pathologies, traitements ou maternité)"
    AND patho_niv1 <> "Traitement antalgique ou anti-inflammatoire (hors pathologies, traitements, maternité ou hospitalisations)"
    AND patho_niv1 <> "Autres affections de longue durée (dont 31 et 32)"
    AND ntop IS NOT NULL