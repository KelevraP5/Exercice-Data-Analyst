import pandas as pd
from sqlalchemy import create_engine

from config import connexion_bdd_brut

engine = create_engine(connexion_bdd_brut)

def load_data(table_name: str, columns: list[str]) -> pd.DataFrame :
    cols = ", ".join(columns)

    query = f"SELECT {cols} FROM {table_name}"

    return pd.read_sql(query, con=engine)