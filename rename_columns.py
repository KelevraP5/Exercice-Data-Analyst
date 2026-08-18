from union import full_data

cols_client = ["client_nom", "client_prenom", "client_telephone"]
cols_employes = ["employe_nom", "employe_prenom", "employe_poste", "employe_garage_id", "antenne_id", "employe_salaire"]
cols_loc_pret = ["garage_id", "location_type", "id_voiture", "id_client", "id_tarif_loc", "date_debut_location", "date_fin_location", "location_prix_ht"]
cols_pieces = ["garage_id", "piece_ref", "piece_nom", "piece_prix_achat", "piece_prix_vente", "piece_stock"]
cols_rep_pieces = ["id_reparations", "id_pieces", "piece_quantite_utilisee"]
cols_rep = ["garage_id", "id_voiture_client", "id_type_reparations", "reparation_date_entree", "reparation_date_sortie", "reparation_temps", "reparation_prix"]
cols_voiture_client = ["id_client", "client_vehicule_type", "client_vehicule_marque", "client_vehicule_couleur", "client_vehicule_immat"]
cols_voiture_garage = ["garage_vehicule_categorie", "garage_vehicule_marque", "garage_vehicule_couleur", "garage_vehicule_immat", "garage_id"]

subset_pieces = ["garage_id", "piece_ref"]

data_client = full_data[cols_client].copy()
data_employes = full_data[cols_employes].copy()
data_loc_pret = full_data[cols_loc_pret].copy()
data_pieces = full_data[cols_pieces].copy().drop_duplicates(subset=subset_pieces)
data_rep_pieces = full_data[cols_rep_pieces].copy()
data_rep = full_data[cols_rep].copy()
data_voiture_client = full_data[cols_voiture_client].copy()
data_voiture = full_data[cols_voiture_garage].copy()

data_client = data_client.rename(
    columns = {
        "client_nom" : "nom",
        "client_prenom" : "prenom",
        "client_telephone" : "telephone",
    }
)

data_employes = data_employes.rename(
    columns={
        "employe_nom": "nom",
        "employe_prenom": "prenom",
        "employe_poste": "poste",
        "employe_garage_id": "id_garage",
        "antenne_id" : "id_antenne",
        "employe_salaire": "salaire_brut_mensuel",
    }
)

data_loc_pret = data_loc_pret.rename(
    columns={
        "garage_id" : "id_garage",
        "location_type": "type_utilisation",
        "id_tarif_loc" : "id_tarif_location",
        "date_debut_location": "date_entree",
        "date_fin_location": "date_sortie",
        "location_prix_ht": "prix_location_ht",
    }
)

data_pieces = data_pieces.rename(
    columns={
        "garage_id" : "id_garage",
        "piece_ref": "reference",
        "piece_nom": "nom",
        "piece_prix_achat": "prix_achat_ht",
        "piece_prix_vente": "prix_vente_ht",
        "piece_stock": "stock",
    }
)

data_rep_pieces = data_rep_pieces.rename(
    columns={
        "piece_quantite_utilisee": "quantite",
    }
)

data_rep = data_rep.rename(
    columns={
        "garage_id" : "id_garage",
        "reparation_date_entree": "date_entree",
        "reparation_date_sortie": "date_sortie",
        "reparation_temps": "temps_reparation",
        "reparation_prix": "prix",
    }
)

data_voiture_client = data_voiture_client.rename(
    columns={
        "client_vehicule_type": "type_vehicule",
        "client_vehicule_marque": "marque",
        "client_vehicule_couleur": "couleur",
        "client_vehicule_immat": "immatriculation",
    }
)

data_voiture = data_voiture.rename(
    columns={
        "garage_vehicule_marque": "marque",
        "garage_vehicule_couleur": "couleur",
        "garage_vehicule_categorie": "categorie",
        "garage_vehicule_immat": "immatriculation",
        "garage_id" : "id_garage"
    }
)