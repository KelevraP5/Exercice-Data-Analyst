employes_query = "SELECT " \
"e.nom AS employe_nom, " \
"e.prenom AS employe_prenom, " \
"e.salaire AS salaire_brut_mensuel, " \
"g.nom AS garage_nom, " \
"g.ville AS garage_ville, " \
"a.nom AS antenne_nom " \
"FROM employes e " \
"LEFT JOIN garage g ON e.id_garage = g.id " \
"LEFT JOIN antenne a ON e.id_antenne = a.id"

garage_query = "SELECT " \
"g.nom AS garage_nom, " \
"g.ville AS garage_ville, " \
"g.loyer_mensuel_ht AS garage_loyer, " \
"g.loyer_mensuel_parking_ht AS garage_parking, " \
"a.nom AS antenne_nom " \
"FROM garage g " \
"LEFT JOIN antenne a ON g.id_antenne = a.id"

antenne_query = "SELECT " \
"nom AS antenne_nom, " \
"loyer_mensuel_ht, " \
"assurance_voiture_mensuel_ht " \
"FROM antenne "

loc_pret_query = "SELECT " \
"l.type_utilisation, " \
"l.prix_location_ht, " \
"g.nom AS garage_nom " \
"FROM location_pret l " \
"LEFT JOIN garage g ON l.id_garage = g.id"

pieces_query = "SELECT " \
"p.nom AS piece_nom, " \
"p.prix_achat_ht, " \
"p.prix_vente_ht, " \
"g.nom AS garage_nom " \
"FROM pieces p " \
"LEFT JOIN garage g ON p.id_garage = g.id"

reparations_query = "SELECT " \
"r.temps_reparation, " \
"r.prix, " \
"tr.niveau_taux_horaires_main_oeuvre AS type_reparations, " \
"g.nom AS garage_nom " \
"FROM reparations r " \
"LEFT JOIN garage g ON r.id_garage = g.id " \
"LEFT JOIN type_reparations tr ON r.id_type_reparations = tr.id"