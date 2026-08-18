import pandas as pd
from sqlalchemy import false, text

from config import raw_data_dir, raw_db
from database import raw_engine

data_havre = pd.read_csv(f"{raw_data_dir}/export_le_havre.csv", sep=";")

# print(data_havre.head()) # permet de lire les premières lignes d'un tableau excel

data_montauban = pd.read_excel(f"{raw_data_dir}/export_montauban.xlsx")

data_nancy = pd.read_json(f"{raw_data_dir}/export_nancy.json")

sql_path = raw_data_dir / "export_lyon.sql"
with open(sql_path, mode="r", encoding="utf-8") as f:
    sql_script = f.read()

data_havre.to_sql(name="raw_le_havre", con=raw_engine, if_exists="replace", index=false)
print(f"Les données de Le Havre à bien été envoyé à {raw_db}")

data_montauban.to_sql(name="raw_montauban", con=raw_engine, if_exists="replace", index=false)
print(f"Les données de Montauban à bien été envoyé à {raw_db}")

data_nancy.to_sql(name="raw_nancy", con=raw_engine, if_exists="replace", index=false)
print(f"Les données de Nancy à bien été envoyé à {raw_db}")

with raw_engine.begin() as connexion:
    for statement in sql_script.split(";"):
        cleaned_statement = statement.strip()

        if cleaned_statement:
            connexion.execute(text(cleaned_statement))

print(f"Les données de Lyon à bien été envoyé à {raw_db}")