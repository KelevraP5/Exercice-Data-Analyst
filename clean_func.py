
import re
from decimal import InvalidOperation

import numpy as np
import pandas as pd

from database import load_data


def load_and_tag_ville(raw_db = str, cols = list, ville_name = None) -> pd.DataFrame :
    df = load_data(raw_db, cols)

    if ville_name != None :
        df.insert(0, "ville", ville_name)

    return df

def clean_nom(value):
    if pd.isna(value):
        return None

    value = str(value).strip()

    clean_up = value.upper()

    return clean_up

def clean_prenom(value):
    if pd.isna(value):
        return None

    value = str(value).strip()

    clean_up = value.capitalize()

    return clean_up

def clean_tel(value):
    if pd.isna(value):
        return None

    value = str(value).strip()

    clean_up = re.sub(r"\D", "", value)
    clean_up = re.sub(r"^(?:33)+0?", "0", clean_up)
    clean_up = re.sub(r"(\d{2})(?=\d)", r"\1 ", clean_up)

    return clean_up

def clean_date(value):
    if pd.isna(value):
        return None
    
    value = str(value).strip()

    clean_up = pd.to_datetime(value, errors="coerce", dayfirst=True, format="mixed")

    return clean_up

def clean_hours(value):
    if pd.isna(value):
        return None

    try :
        value = str(value).replace(",", ".").strip()

        val_time = re.sub(r"\D(?=\d)", ".", value)
        val_time = re.sub(r"[^\d.]", "", val_time)

        if len(val_time) == 4 :
            hrs, mins = val_time.split(".")

            return float(hrs) + (float(mins) / 60)

        return float(val_time)
    
    except (ValueError, TypeError) :
        return None

def clean_money(value):

    try :
        value = str(value).replace(",", ".").strip()
        value = re.sub(r"[^\d.]", "", value)

        return float(value)

    except (ValueError, TypeError, InvalidOperation) :
        return None

def clean_location(value):

    if pd.isna(value):
        return None
    
    value = str(value).upper().strip()

    value = re.sub(r"(_\w+)", "", value)

    return value

def clean_stock(value):

    if pd.isna(value):
        return None

    value = str(value).strip()

    try :
        value = float(value)
        value = int(value)

        return max(0, value)

    except (ValueError, TypeError) :
        return None

def rearrange_loc_date(
        good_df, 
        dataframe,
        col_type = "location_type",
        comparaison = "LOCATION",
        col_loc_deb = "date_debut_location", 
        col_loc_fin = "date_fin_location",
        col_rep_deb = "reparation_date_entree", 
        col_rep_fin = "reparation_date_sortie"
    ) :

    condition = dataframe[col_type] == comparaison

    good_df.loc[condition, col_loc_deb] = dataframe.loc[condition, col_rep_deb]
    good_df.loc[condition, col_loc_fin] = dataframe.loc[condition, col_rep_fin]

    dataframe.loc[condition, col_rep_deb] = None
    dataframe.loc[condition, col_rep_fin] = None

    return good_df, dataframe

def check_type_repair(good_df, col, checked_dict, col_final) :

    conditions = []
    choix = []

    for key, value in checked_dict.items() :
        conditions.append(
            good_df[col].str.lower().str.contains(key, na=False)
        )

        choix.append(value)

    good_df[col_final] = np.select(conditions, choix, default= None)

    return good_df