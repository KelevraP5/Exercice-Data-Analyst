import json
import random
from pathlib import Path

import pandas as pd
from faker import Faker

fake = Faker("fr_FR")
random.seed(42)

RAW_DIR = Path(__file__).resolve().parent / "donnees_brutes"
RAW_DIR.mkdir(exist_ok=True)

# ---------------------------------------------------------
# HELPER : Générateurs d'erreurs et saletés
# ---------------------------------------------------------
def dirty_phone():
    p = fake.phone_number()
    r = random.random()
    if r < 0.25:
        return p.replace(" ", ".")
    if r < 0.45:
        return "+33 " + p[1:]
    if r < 0.60:
        return p.replace(" ", "")
    if r < 0.70:
        return p + " (perso)"
    return p

def dirty_text(txt):
    r = random.random()
    if r < 0.2:
        return txt.upper()
    if r < 0.4:
        return txt.lower()
    if r < 0.55:
        return " " + txt + " "
    return txt

def dirty_date():
    d = fake.date_time_between(start_date="-2y", end_date="now")
    r = random.random()
    if r < 0.25:
        return d.strftime("%d/%m/%Y %H:%M")
    if r < 0.50:
        return d.strftime("%Y-%m-%d %H:%M:%S")
    if r < 0.75:
        return d.strftime("%Y/%m/%d")
    return d.isoformat()

# ---------------------------------------------------------
# GENERATEUR DE JEU DE DONNÉES COMPLET POUR UN GARAGE
# ---------------------------------------------------------
marques = ["Renault", "Peugeot", "Citroën", "Volkswagen", "BMW", "Toyota"]
couleurs = ["Rouge", "Bleu", "Noir", "Gris", "Blanc"]
types_veh = ["Citadine", "Berline", "SUV", "Utilitaire"]
postes = ["Mécanicien", "Chef d'atelier", "Réceptionniste", "Carrossier"]
pieces_list = [
    ("REF-101", "Filtre à huile", 15.0, 30.0),
    ("REF-102", "Plaquettes de frein", 45.0, 85.0),
    ("REF-103", "Disque de frein", 80.0, 150.0),
    ("REF-104", "Batterie 12V", 90.0, 160.0),
]

def generate_full_garage_dataset(id_garage, id_antenne, count=30):
    rows = []
    for _ in range(1, count + 1):
        # 1. Client & Voiture Client
        c_nom = dirty_text(fake.last_name())
        c_prenom = dirty_text(fake.first_name())
        c_tel = dirty_phone()
        v_type = random.choice(types_veh)
        v_marque = random.choice(marques)
        v_couleur = random.choice(couleurs)
        v_immat = fake.license_plate()

        # 2. Employé
        e_nom = dirty_text(fake.last_name())
        e_prenom = dirty_text(fake.first_name())
        e_poste = random.choice(postes)
        e_salaire = random.choice([2100.0, "2200 €", 1950.5, -1500, "N/A", None])

        # 3. Réparation
        d_entree = dirty_date()
        # Piège : dates de sortie parfois antérieures ou nulles
        d_sortie = (
            "2020-01-01" if random.random() < 0.1 else dirty_date()
        )
        temps_rep = random.choice([1.0, 2.5, "1h30", "2.0 hrs", None])
        prix_rep = random.choice([120.0, 450.0, -50.0, "300 €", None])

        # 4. Voiture Garage & Location
        vg_marque = random.choice(marques)
        vg_immat = fake.license_plate()
        loc_type = random.choice(["PRET", "LOCATION", "pret", "Location_Courte"])
        loc_prix = random.choice([35.0, 50.0, "45 €", -20.0, None])

        # 5. Pièce & Stock
        p_ref, p_nom, p_achat, p_vente = random.choice(pieces_list)
        p_stock = random.choice([15, 0, -2, "EN STOCK"])
        p_qte = random.choice([1, 2, 0, -1])

        rows.append({
            "garage_id": id_garage,
            "antenne_id": id_antenne,
            "client_nom": c_nom,
            "client_prenom": c_prenom,
            "client_telephone": c_tel,
            "client_vehicule_type": v_type,
            "client_vehicule_marque": v_marque,
            "client_vehicule_couleur": v_couleur,
            "client_vehicule_immat": v_immat,
            "employe_nom": e_nom,
            "employe_prenom": e_prenom,
            "employe_poste": e_poste,
            "employe_salaire": e_salaire,
            "reparation_date_entree": d_entree,
            "reparation_date_sortie": d_sortie,
            "reparation_temps": temps_rep,
            "reparation_prix": prix_rep,
            "garage_vehicule_marque": vg_marque,
            "garage_vehicule_immat": vg_immat,
            "location_type": loc_type,
            "location_prix_ht": loc_prix,
            "piece_ref": p_ref,
            "piece_nom": p_nom,
            "piece_prix_achat": p_achat,
            "piece_prix_vente": p_vente,
            "piece_stock": p_stock,
            "piece_quantite_utilisee": p_qte,
        })
    return rows

# ---------------------------------------------------------
# EXPORT DES 4 FICHIERS AVEC LEURS FORMATS DISTINCTS
# ---------------------------------------------------------

# 1. LE HAVRE -> CSV
data_havre = generate_full_garage_dataset(id_garage=1, id_antenne=1)
pd.DataFrame(data_havre).to_csv(
    RAW_DIR / "export_le_havre.csv", sep=";", index=False, encoding="utf-8"
)

# 2. MONTAUBAN -> Excel (.xlsx)
data_montauban = generate_full_garage_dataset(id_garage=2, id_antenne=2)
pd.DataFrame(data_montauban).to_excel(
    RAW_DIR / "export_montauban.xlsx", index=False
)

# 3. NANCY -> JSON
data_nancy = generate_full_garage_dataset(id_garage=3, id_antenne=3)
with open(RAW_DIR / "export_nancy.json", "w", encoding="utf-8") as f:
    json.dump(data_nancy, f, ensure_ascii=False, indent=4)

# 4. LYON -> SQL
data_lyon = generate_full_garage_dataset(id_garage=4, id_antenne=4)
sql_statements = [
    "DROP TABLE IF EXISTS `raw_lyon`;",
    """CREATE TABLE `raw_lyon` (
        `garage_id` INT, `antenne_id` INT, `client_nom` VARCHAR(255), `client_prenom` VARCHAR(255),
        `client_telephone` VARCHAR(255), `client_vehicule_type` VARCHAR(255), `client_vehicule_marque` VARCHAR(255),
        `client_vehicule_couleur` VARCHAR(255), `client_vehicule_immat` VARCHAR(255), `employe_nom` VARCHAR(255),
        `employe_prenom` VARCHAR(255), `employe_poste` VARCHAR(255), `employe_salaire` VARCHAR(255),
        `reparation_date_entree` VARCHAR(255), `reparation_date_sortie` VARCHAR(255), `reparation_temps` VARCHAR(255),
        `reparation_prix` VARCHAR(255), `garage_vehicule_marque` VARCHAR(255), `garage_vehicule_immat` VARCHAR(255),
        `location_type` VARCHAR(255), `location_prix_ht` VARCHAR(255), `piece_ref` VARCHAR(255),
        `piece_nom` VARCHAR(255), `piece_prix_achat` VARCHAR(255), `piece_prix_vente` VARCHAR(255),
        `piece_stock` VARCHAR(255), `piece_quantite_utilisee` VARCHAR(255)
    );""",
]

cols = list(data_lyon[0].keys())
cols_str = "`" + "`, `".join(cols) + "`"

for row in data_lyon:
    vals = []
    for k, v in row.values():
        if v is None:
            vals.append("NULL")
        else:
            val_str = str(v).replace("'", "''")
            vals.append(f"'{val_str}'")
    vals_str = ", ".join(vals)
    sql_statements.append(
        f"INSERT INTO `raw_lyon` ({cols_str}) VALUES ({vals_str});"
    )

with open(RAW_DIR / "export_lyon.sql", "w", encoding="utf-8") as f:
    f.write("\n".join(sql_statements))

print("✅ Fichiers bruts parfaitement harmonisés et générés dans 'donnees_brutes/' !")