import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.exc import SQLAlchemyError

from config import connexion_bdd_brut, connexion_bdd_clean

raw_engine = create_engine(connexion_bdd_brut)
clean_engine = create_engine(connexion_bdd_clean)

def load_data(table_name: str, columns: list[str]) -> pd.DataFrame :
    cols = ", ".join(columns)

    query = f"SELECT {cols} FROM {table_name}"

    return pd.read_sql(query, con=raw_engine)

def insert_clean_data (data_to_send, table_name) :
    try :
        data_to_send.to_sql(
            name=table_name,
            con=clean_engine,
            if_exists="replace",
            index=False,
            chunksize=500
        )

        print(f"Les données ont bien été envoyées à la table {table_name} !")

    except (SQLAlchemyError, ValueError) as e :
        print(f"Erreur lors de l'insertion {e}")
        return