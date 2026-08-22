from clean_func import (
    check_type_repair,
    clean_date,
    clean_hours,
    clean_location,
    clean_money,
    clean_nom,
    clean_prenom,
    clean_stock,
    clean_tel,
    load_and_tag_ville,
    rearrange_loc_date,
)

list_cols_to_clean = ["client_nom", "client_prenom", "client_telephone", "employe_nom", "employe_prenom", "employe_salaire", "reparation_date_entree", "reparation_date_sortie", "reparation_temps", "reparation_prix", "location_type", "location_prix_ht", "piece_stock", "piece_quantite_utilisee"]

list_reste_data = ["garage_id", "antenne_id", "client_vehicule_type", "client_vehicule_marque", "client_vehicule_couleur", "client_vehicule_immat" ,"employe_poste", "garage_vehicule_categorie", "garage_vehicule_marque", "garage_vehicule_couleur", "garage_vehicule_immat", "date_debut_location", "date_fin_location", "piece_ref", "piece_nom", "piece_prix_achat", "piece_prix_vente"]

# Clean Le Havre

df_le_havre = load_and_tag_ville("raw_le_havre", list_cols_to_clean, "LH")

df_le_havre["client_nom"] = df_le_havre["client_nom"].apply(clean_nom)
df_le_havre["employe_nom"] = df_le_havre["employe_nom"].apply(clean_nom)

df_le_havre["client_prenom"] = df_le_havre["client_prenom"].apply(clean_prenom)
df_le_havre["employe_prenom"] = df_le_havre["employe_prenom"].apply(clean_prenom)

df_le_havre["client_telephone"] = df_le_havre["client_telephone"].apply(clean_tel)

df_le_havre["reparation_date_entree"] = df_le_havre["reparation_date_entree"].apply(clean_date)
df_le_havre["reparation_date_sortie"] = df_le_havre["reparation_date_sortie"].apply(clean_date)

df_le_havre["reparation_temps"] = df_le_havre["reparation_temps"].apply(clean_hours)
df_le_havre["reparation_prix"] = df_le_havre["reparation_prix"].apply(clean_money)

df_le_havre["employe_salaire"] = df_le_havre["employe_salaire"].apply(clean_money)
df_le_havre["location_prix_ht"] = df_le_havre["location_prix_ht"].apply(clean_money)

df_le_havre["location_type"] = df_le_havre["location_type"].apply(clean_location)

df_le_havre["piece_stock"] = df_le_havre["piece_stock"].apply(clean_stock)
df_le_havre["piece_quantite_utilisee"] = df_le_havre["piece_quantite_utilisee"].apply(clean_stock)

# Clean Montauban

df_montauban = load_and_tag_ville("raw_montauban", list_cols_to_clean, "MT")

df_montauban["client_nom"] = df_montauban["client_nom"].apply(clean_nom)
df_montauban["employe_nom"] = df_montauban["employe_nom"].apply(clean_nom)

df_montauban["client_prenom"] = df_montauban["client_prenom"].apply(clean_prenom)
df_montauban["employe_prenom"] = df_montauban["employe_prenom"].apply(clean_prenom)

df_montauban["client_telephone"] = df_montauban["client_telephone"].apply(clean_tel)

df_montauban["reparation_date_entree"] = df_montauban["reparation_date_entree"].apply(clean_date)
df_montauban["reparation_date_sortie"] = df_montauban["reparation_date_sortie"].apply(clean_date)

df_montauban["reparation_temps"] = df_montauban["reparation_temps"].apply(clean_hours)
df_montauban["reparation_prix"] = df_montauban["reparation_prix"].apply(clean_money)

df_montauban["employe_salaire"] = df_montauban["employe_salaire"].apply(clean_money)
df_montauban["location_prix_ht"] = df_montauban["location_prix_ht"].apply(clean_money)

df_montauban["location_type"] = df_montauban["location_type"].apply(clean_location)

df_montauban["piece_stock"] = df_montauban["piece_stock"].apply(clean_stock)
df_montauban["piece_quantite_utilisee"] = df_montauban["piece_quantite_utilisee"].apply(clean_stock)


# clean Nancy

df_nancy = load_and_tag_ville("raw_nancy", list_cols_to_clean, "N")

df_nancy["client_nom"] = df_nancy["client_nom"].apply(clean_nom)
df_nancy["employe_nom"] = df_nancy["employe_nom"].apply(clean_nom)

df_nancy["client_prenom"] = df_nancy["client_prenom"].apply(clean_prenom)
df_nancy["employe_prenom"] = df_nancy["employe_prenom"].apply(clean_prenom)

df_nancy["client_telephone"] = df_nancy["client_telephone"].apply(clean_tel)

df_nancy["reparation_date_entree"] = df_nancy["reparation_date_entree"].apply(clean_date)
df_nancy["reparation_date_sortie"] = df_nancy["reparation_date_sortie"].apply(clean_date)

df_nancy["reparation_temps"] = df_nancy["reparation_temps"].apply(clean_hours)
df_nancy["reparation_prix"] = df_nancy["reparation_prix"].apply(clean_money)

df_nancy["employe_salaire"] = df_nancy["employe_salaire"].apply(clean_money)
df_nancy["location_prix_ht"] = df_nancy["location_prix_ht"].apply(clean_money)

df_nancy["location_type"] = df_nancy["location_type"].apply(clean_location)

df_nancy["piece_stock"] = df_nancy["piece_stock"].apply(clean_stock)
df_nancy["piece_quantite_utilisee"] = df_nancy["piece_quantite_utilisee"].apply(clean_stock)


# clean Lyon

df_lyon = load_and_tag_ville("raw_lyon", list_cols_to_clean, "LY")

df_lyon["client_nom"] = df_lyon["client_nom"].apply(clean_nom)
df_lyon["employe_nom"] = df_lyon["employe_nom"].apply(clean_nom)

df_lyon["client_prenom"] = df_lyon["client_prenom"].apply(clean_prenom)
df_lyon["employe_prenom"] = df_lyon["employe_prenom"].apply(clean_prenom)

df_lyon["client_telephone"] = df_lyon["client_telephone"].apply(clean_tel)

df_lyon["reparation_date_entree"] = df_lyon["reparation_date_entree"].apply(clean_date)
df_lyon["reparation_date_sortie"] = df_lyon["reparation_date_sortie"].apply(clean_date)

df_lyon["reparation_temps"] = df_lyon["reparation_temps"].apply(clean_hours)
df_lyon["reparation_prix"] = df_lyon["reparation_prix"].apply(clean_money)

df_lyon["employe_salaire"] = df_lyon["employe_salaire"].apply(clean_money)
df_lyon["location_prix_ht"] = df_lyon["location_prix_ht"].apply(clean_money)

df_lyon["location_type"] = df_lyon["location_type"].apply(clean_location)

df_lyon["piece_stock"] = df_lyon["piece_stock"].apply(clean_stock)
df_lyon["piece_quantite_utilisee"] = df_lyon["piece_quantite_utilisee"].apply(clean_stock)

# mise en commun avec les autres données non nettoyés

good_data_havre = load_and_tag_ville("raw_le_havre", list_reste_data)
good_data_montauban = load_and_tag_ville("raw_montauban", list_reste_data)
good_data_nancy = load_and_tag_ville("raw_nancy", list_reste_data)
good_data_lyon = load_and_tag_ville("raw_lyon", list_reste_data)

good_data_havre, df_le_havre = rearrange_loc_date(good_data_havre, df_le_havre)
good_data_montauban, df_montauban = rearrange_loc_date(good_data_montauban, df_montauban)
good_data_nancy, df_nancy = rearrange_loc_date(good_data_nancy, df_nancy)
good_data_lyon, df_lyon = rearrange_loc_date(good_data_lyon, df_lyon)

good_data_havre = check_type_repair(good_data_havre, "piece_nom", {"huile" : 1, "frein" : 2, "batterie" : 3}, "id_type_reparations")
good_data_montauban = check_type_repair(good_data_montauban, "piece_nom", {"huile" : 1, "frein" : 2, "batterie" : 3}, "id_type_reparations")
good_data_nancy = check_type_repair(good_data_nancy, "piece_nom", {"huile" : 1, "frein" : 2, "batterie" : 3}, "id_type_reparations")
good_data_lyon = check_type_repair(good_data_lyon, "piece_nom", {"huile" : 1, "frein" : 2, "batterie" : 3}, "id_type_reparations")