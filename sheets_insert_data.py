from database import insert_sql_to_sheets
from queries import (
    antenne_query,
    employes_query,
    garage_query,
    loc_pret_query,
    pieces_query,
    reparations_query,
)

credentials_file = "credentials.json"
spreadsheet_name = "Exercice Data Analyst"

insert_sql_to_sheets(credentials_file_name=credentials_file, spreadsheet_name=spreadsheet_name, sheet_name="DATA-employés", custom_query=employes_query, begin_pos= "A1")

insert_sql_to_sheets(credentials_file_name=credentials_file, spreadsheet_name=spreadsheet_name, sheet_name="DATA-garages et antennes", custom_query=garage_query, begin_pos= "A1")

insert_sql_to_sheets(credentials_file_name=credentials_file, spreadsheet_name=spreadsheet_name, sheet_name="DATA-garages et antennes", custom_query=antenne_query, begin_pos="A9")

insert_sql_to_sheets(credentials_file_name=credentials_file, spreadsheet_name=spreadsheet_name, sheet_name="DATA-locations et prêts", custom_query=loc_pret_query, begin_pos="A1")

insert_sql_to_sheets(credentials_file_name=credentials_file, spreadsheet_name=spreadsheet_name, sheet_name="DATA-pièces", custom_query=pieces_query, begin_pos="A1")

insert_sql_to_sheets(credentials_file_name=credentials_file, spreadsheet_name=spreadsheet_name, sheet_name="DATA-réparations", custom_query=reparations_query, begin_pos="A1")