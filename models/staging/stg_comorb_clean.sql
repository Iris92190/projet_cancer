SELECT*
FROM {{ref("column_clean_combord")}}
WHERE Ncomorb IS NOT NULL
AND patho_niv1 <> "Séjours en hospitalisation complète pour prise en charge de la Covid-19"
AND libelle_comorbidite <> "Séjours en hospitalisation complète pour prise en charge de la Covid-19"
AND patho_niv1 <> "Pas de pathologies repérées, traitements, maternité, hospitalisations ni traitement antalgique ou anti-inflammatoire"
AND libelle_comorbidite <> "Pas de pathologies repérées, traitements, maternité, hospitalisations ni traitement antalgique ou anti-inflammatoire"
AND patho_niv1 <> "Maternité (avec ou sans pathologies)"
AND libelle_comorbidite <> "Maternité (avec ou sans pathologies)"
AND patho_niv1 <> "Hospitalisations ponctuelles (avec ou sans pathologies, traitements ou maternité)"
AND patho_niv1 <> "Traitement antalgique ou anti-inflammatoire (hors pathologies, traitements, maternité ou hospitalisations)"
AND patho_niv1 <> "Autres affections de longue durée (dont 31 et 32)"