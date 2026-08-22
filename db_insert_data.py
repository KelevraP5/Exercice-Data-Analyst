from database import insert_clean_data
from rename_columns import (
    data_client,
    data_employes,
    data_loc_pret,
    data_pieces,
    data_rep,
    data_rep_pieces,
    data_voiture,
    data_voiture_client,
)

insert_clean_data(data_client, "client")
insert_clean_data(data_pieces, "pieces")
insert_clean_data(data_employes, "employes")
insert_clean_data(data_voiture_client, "voiture_client")
insert_clean_data(data_voiture, "voitures")
insert_clean_data(data_loc_pret, "location_pret")
insert_clean_data(data_rep, "reparations")
insert_clean_data(data_rep_pieces, "reparation_pieces")