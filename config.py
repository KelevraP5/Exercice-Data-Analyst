import os
from pathlib import Path

from dotenv import load_dotenv

base_dir = Path(__file__).resolve().parent

raw_data_dir = base_dir / "donnees_brutes"

load_dotenv()

user = os.getenv("DB_USER")
pwd = os.getenv("DB_PASSWORD")
host = os.getenv("DB_HOST")
port = os.getenv("DB_PORT")

raw_db = os.getenv("DB_RAW_NAME")
clean_db = os.getenv("DB_CLEAN_NAME")

connexion_bdd_brut = f"mysql+pymysql://{user}:{pwd}@{host}:{port}/{raw_db}"
connexion_bdd_clean = f"mysql+pymysql://{user}:{pwd}@{host}:{port}/{clean_db}"