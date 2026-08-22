CREATE TABLE IF NOT EXISTS `antenne` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`nom` VARCHAR(255) NOT NULL,
	`adresse` VARCHAR(255) NOT NULL,
	`code_postal` VARCHAR(255) NOT NULL,
	`ville` VARCHAR(255) NOT NULL,
	`loyer_mensuel_ht` DECIMAL(10,2) NOT NULL,
	`assurance_voiture_mensuel_ht` DECIMAL(10,2) NOT NULL,
	PRIMARY KEY(`id`)
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS `garage` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`nom` VARCHAR(255) NOT NULL,
	`adresse` VARCHAR(255) NOT NULL,
	`code_postal` VARCHAR(255) not null,
	`ville` VARCHAR (255) not null,
	`id_antenne` INTEGER NOT NULL,
	`loyer_mensuel_ht` DECIMAL(10,2) NOT NULL,
	`loyer_mensuel_parking_ht` DECIMAL(10,2),
	PRIMARY KEY(`id`),
	CONSTRAINT `fk_garage_antenne` 
    FOREIGN KEY (`id_antenne`) REFERENCES `antenne` (`id`) 
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `type_reparations` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`niveau_taux_horaires_main_oeuvre` VARCHAR(255) NOT NULL,
	`prix_horaire_main_oeuvre` DECIMAL(10,2) NOT NULL,
	PRIMARY KEY(`id`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `employes` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`nom` VARCHAR(255) NOT NULL,
	`prenom` VARCHAR(255) NOT NULL,
	`poste` VARCHAR(255) NOT NULL,
	`id_garage` INTEGER,
	`id_antenne` INTEGER,
	`salaire_brut_mensuel` DECIMAL(10,2) NOT NULL,
	PRIMARY KEY(`id`),
	CONSTRAINT `fk_employes_antenne` 
    FOREIGN KEY (`id_antenne`) REFERENCES `antenne` (`id`) 
    ON DELETE SET NULL ON UPDATE cascade,
    CONSTRAINT `fk_employes_garage` 
    FOREIGN KEY (`id_garage`) REFERENCES `garage` (`id`) 
    ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS `client` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`nom` VARCHAR(255) NOT NULL,
	`prenom` VARCHAR(255) NOT NULL,
	`telephone` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id`)
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS `voiture_client` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`id_client` INTEGER NOT NULL,
	`type_vehicule` VARCHAR(255) NOT NULL,
	`marque` VARCHAR(255) NOT NULL,
	`couleur` VARCHAR(255) NOT NULL,
	`immatriculation` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id`),
	CONSTRAINT `fk_voiture_client_client` 
    FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) 
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS `reparations` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`id_garage` INTEGER NOT NULL,
	`id_voiture_client` INTEGER NOT NULL,
	`id_type_reparations` INTEGER NOT NULL,
	`date_entree` DATETIME NOT NULL,
	`date_sortie` DATETIME NOT NULL,
	`temps_reparation` DECIMAL(4,2) NOT NULL,
	`prix` DECIMAL(10,2) NOT NULL,
	PRIMARY KEY(`id`),
	CONSTRAINT `fk_reparations_garage` 
    FOREIGN KEY (`id_garage`) REFERENCES `garage` (`id`) 
    ON DELETE CASCADE ON UPDATE cascade,
	CONSTRAINT `fk_reparations_voiture_client` 
    FOREIGN KEY (`id_voiture_client`) REFERENCES `voiture_client` (`id`) 
    ON DELETE CASCADE ON UPDATE cascade,
    CONSTRAINT `fk_reparations_type_reparations` 
    FOREIGN KEY (`id_type_reparations`) REFERENCES `type_reparations` (`id`) 
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS `voitures` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`marque` VARCHAR(255) NOT NULL,
	`couleur` VARCHAR(255) NOT NULL,
	`categorie` VARCHAR(255) NOT NULL,
	`immatriculation` VARCHAR(255) NOT NULL,
	`id_garage` INTEGER NOT NULL,
	PRIMARY KEY(`id`),
	CONSTRAINT `fk_voitures_garage` 
    FOREIGN KEY (`id_garage`) REFERENCES `garage` (`id`) 
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS `pieces` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`id_garage` INTEGER NOT NULL,
	`reference` VARCHAR(255) NOT NULL,
	`nom` VARCHAR(255) NOT NULL,
	`prix_achat_ht` DECIMAL(10,2) NOT NULL,
	`prix_vente_ht` DECIMAL(10,2) NOT NULL,
	`stock` INTEGER NOT NULL,
	PRIMARY KEY(`id`),
    CONSTRAINT `fk_pieces_garage` 
    FOREIGN KEY (`id_garage`) REFERENCES `garage` (`id`) 
    ON DELETE CASCADE ON UPDATE CASCADE
) engine=InnoDB;


CREATE TABLE IF NOT EXISTS `tarif_location` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`type_vehicule` VARCHAR(255) NOT NULL,
	`prix_journalier_ht` DECIMAL(10,2) NOT NULL,
	`frais_assurance` DECIMAL(10,2) NOT NULL,
	PRIMARY KEY(`id`)
) engine=InnoDB;


CREATE TABLE IF NOT EXISTS `location_pret` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`id_garage` INTEGER NOT NULL,
	`type_utilisation` VARCHAR(255) NOT NULL,
	`id_voiture` INTEGER NOT NULL,
	`id_client` INTEGER NOT NULL,
	`id_tarif_location` INTEGER,
	`date_entree` DATETIME NOT NULL,
	`date_sortie` DATETIME NOT NULL,
	`prix_location_ht` DECIMAL(10,2),
	PRIMARY KEY(`id`),
	CONSTRAINT `fk_location_pret_garage` 
    FOREIGN KEY (`id_garage`) REFERENCES `garage` (`id`) 
    ON DELETE CASCADE ON UPDATE cascade,
	CONSTRAINT `fk_location_pret_voiture` 
    FOREIGN KEY (`id_voiture`) REFERENCES `voitures` (`id`) 
    ON DELETE CASCADE ON UPDATE cascade,
    CONSTRAINT `fk_location_pret_client` 
    FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) 
    ON DELETE CASCADE ON UPDATE cascade,
	CONSTRAINT `fk_location_pret_tarif_location` 
    FOREIGN KEY (`id_tarif_location`) REFERENCES `tarif_location` (`id`)
    ON DELETE CASCADE ON UPDATE cascade
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS `reparation_pieces` (
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`id_reparations` INTEGER NOT NULL,
	`id_pieces` INTEGER NOT NULL,
	`quantite` INTEGER NOT NULL,
	PRIMARY KEY(`id`),
	CONSTRAINT `fk_reparation_pieces_reparations` 
    FOREIGN KEY (`id_reparations`) REFERENCES `reparations` (`id`) 
    ON DELETE CASCADE ON UPDATE cascade,
	CONSTRAINT `fk_reparation_pieces_pieces` 
    FOREIGN KEY (`id_pieces`) REFERENCES `pieces` (`id`) 
    ON DELETE CASCADE ON UPDATE cascade
) ENGINE=InnoDB;


insert into `antenne` (`nom`, `adresse`, `code_postal`, `ville`, `loyer_mensuel_ht`, `assurance_voiture_mensuel_ht`) values
('Car&Pair Havre',	'15 rue Louis Brindeau',	'76600',	'Le Havre',	1500.00,	150.00),
('Car&Pair Montauban',	'85 Boulevard Blaise Doumerc',	'82000',	'Montauban',	2000.00,	250.00),
('Car&Pair Nancy',	'52 boulevard Albert 1er',	'54000',	'Nancy', 2200.00,	450.00),
('Car&Pair Lyon',	'17 impasse Flesselles',	'69001',	'Lyon',	3500.00,	480.00);

insert into `garage` (`nom`, `adresse`, `code_postal`, `ville`, `id_antenne`,`loyer_mensuel_ht`, `loyer_mensuel_parking_ht`) values
('Car&Pair (ex Le Carage)',	'54 rue Mougeot',	'76600',	'Le Havre',	1, 1250.00,	300.00),
('Car&Pair Montauban',	'73 route de Montricoux',	'82000',	'Montauban',	2, 1500.00,	350.00),
('Car&Pair Nancy',	'68 rue Gabriel Mouilleron',	'54000',	'Nancy',	3, 2350.00,	280.00),
('Car&Pair Lyon Centre',	'32 rue Sébastien Gryphe',	'69002',	'Lyon',	4, 3000.00,	650.00);

INSERT INTO `type_reparations` (`niveau_taux_horaires_main_oeuvre`, `prix_horaire_main_oeuvre`) VALUES
('T1 - Entretien Courant & Vidange', 65.00),
('T2 - Mécanique Générale & Freinage', 85.00),
('T3 - Diagnostique Électronique & Complexité', 110.00),
('T4 - Carrosserie & Peinture', 95.00);

INSERT INTO `tarif_location` (`type_vehicule`, `prix_journalier_ht`, `frais_assurance`) VALUES
('Citadine', 25.00, 5.00),
('Berline', 45.00, 8.50),
('SUV', 60.00, 10.00),
('Utilitaire', 50.00, 12.00);