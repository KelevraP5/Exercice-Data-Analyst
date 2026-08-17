import gspread
import pandas as pd
from oauth2client.service_account import ServiceAccountCredentials
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

def insert_sql_to_sheets(credentials_file_name : str, spreadsheet_name : str, sheet_name : str, wanted_cols : str, table_name : str) :
    scope=["https://spreadsheets.google.com/feeds",
    "https://www.googleapis.com/auth/drive",]

    creds = ServiceAccountCredentials.from_json_keyfile_name(
    credentials_file_name, scope
)
    data = gspread.authorize(creds)

    spreadsheet = data.open(spreadsheet_name)
    worksheet = spreadsheet.worksheet(sheet_name)

    worksheet.clear()

    df_table = pd.read_sql(f"SELECT {wanted_cols} FROM {table_name}", con=clean_engine)

    data_to_show = [df_table.columns.values.tolist()] + df_table.to_numpy().tolist()
    worksheet.update("A1", data_to_show)

    print(f"Les données de la table {table_name} ont bien été écrite sur {spreadsheet_name} dans la feuille {sheet_name}")