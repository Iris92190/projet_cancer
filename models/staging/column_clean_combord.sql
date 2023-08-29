select annee,patho_niv1,patho_niv2,patho_niv3,libelle_comorbidite,Ncomorb,Ntop,Proportion_comorb
from{{source('pathologie','comorbidites')}}
