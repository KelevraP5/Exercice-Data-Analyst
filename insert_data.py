from database import (
    insert_clean_data,
    insert_sql_to_sheets,
)
from queries import antenne_query, employes_query, garage_query, loc_pret_query, pieces_query
from rename_columns import (
    data_client,
    data_employes,
    data_loc_pret,
    data_pieces,
    data_rep,
    data_rep_pieces,
    data_voiture,
    data_voiture_client,
)

credentials_file = "credentials.json"
spreadsheet_name = "Exercice Data Analyst"

# Insertion en BDD Clean

# insert_clean_data(data_client, "client")
# insert_clean_data(data_pieces, "pieces")
# insert_clean_data(data_employes, "employes")
# insert_clean_data(data_voiture_client, "voiture_client")
# insert_clean_data(data_voiture, "voitures")
# insert_clean_data(data_loc_pret, "location_pret")
# insert_clean_data(data_rep, "reparations")
# insert_clean_data(data_rep_pieces, "reparation_pieces")

# Insertion dans un Google Sheets

# insert_sql_to_sheets(credentials_file_name=credentials_file, spreadsheet_name=spreadsheet_name, sheet_name="DATA-employés", custom_query=employes_query, begin_pos= "A1")

# insert_sql_to_sheets(credentials_file_name=credentials_file, spreadsheet_name=spreadsheet_name, sheet_name="DATA-garages & antennes", custom_query=garage_query, begin_pos= "A1")

# insert_sql_to_sheets(credentials_file_name=credentials_file, spreadsheet_name=spreadsheet_name, sheet_name="DATA-garages & antennes", custom_query=antenne_query, begin_pos="A9")

# insert_sql_to_sheets(credentials_file_name=credentials_file, spreadsheet_name=spreadsheet_name, sheet_name="DATA-locations & prêts", custom_query=loc_pret_query, begin_pos="A1")

# insert_sql_to_sheets(credentials_file_name=credentials_file, spreadsheet_name=spreadsheet_name, sheet_name="DATA-pièces", custom_query=pieces_query, begin_pos="A1")