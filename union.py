
import numpy as np
import pandas as pd

from clean_data import (
    df_le_havre,
    df_lyon,
    df_montauban,
    df_nancy,
    good_data_havre,
    good_data_lyon,
    good_data_montauban,
    good_data_nancy,
)
from clean_func import rearrange_data

df_villes = pd.concat([df_le_havre, df_montauban, df_nancy, df_lyon], ignore_index=True)
good_data = pd.concat([good_data_havre, good_data_montauban, good_data_nancy, good_data_lyon], ignore_index=True)

full_data = pd.concat([df_villes, good_data], axis=1)

full_data = full_data.reset_index(drop=True)
full_data.insert(0, "id", full_data.index + 1)
full_data.insert(23, "id_tarif_loc", 0)

full_data["employe_garage_id"] = np.where(full_data["employe_poste"].str.lower() != "réceptionniste", full_data["garage_id"], None)

full_data = rearrange_data(df=full_data, col="garage_vehicule_categorie", split=False, checked_word="citadine", col_output="id_tarif_loc", value_output=1)
full_data = rearrange_data(df=full_data, col="garage_vehicule_categorie", split=False, checked_word="berline", col_output="id_tarif_loc", value_output=2)
full_data = rearrange_data(df=full_data, col="garage_vehicule_categorie", split=False, checked_word="suv", col_output="id_tarif_loc", value_output=3)
full_data = rearrange_data(df=full_data, col="garage_vehicule_categorie", split=False, checked_word="utilitaire", col_output="id_tarif_loc", value_output=4)

full_data = rearrange_data(df=full_data, col="piece_ref", split=True, checked_word=None, col_output="id_pieces")

full_data["id_voiture"] = full_data["id"]
full_data["id_voiture_client"] = full_data["id"]
full_data["id_client"] = full_data["id"]
full_data["id_reparations"] = full_data["id"]
