#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

CREATE DATABASE `WarframeSanctuary`
CHARACTER SET `utf8`;
USE `WarframeSanctuary`;

#------------------------------------------------------------
# Table: `m3s4pL0v3_categories`
#------------------------------------------------------------

CREATE TABLE `m3s4pL0v3_categories`(
        `id`  Int  Auto_increment  NOT NULL ,
        `name` Varchar (50) NOT NULL
	,CONSTRAINT m3s4pL0v3_categories_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4pL0v3_subCategories`
#------------------------------------------------------------

CREATE TABLE `m3s4pL0v3_subCategories`(
        `id`                     Int  Auto_increment  NOT NULL ,
        `name`                    Varchar (50) NOT NULL ,
        `id_m3s4pL0v3_categories` Int NOT NULL
	,CONSTRAINT m3s4pL0v3_subCategories_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4pL0v3_items`
#------------------------------------------------------------

CREATE TABLE `m3s4pL0v3_items`(
        `id`                         Int  Auto_increment  NOT NULL ,
        `name`                       Varchar (50) NOT NULL ,
        `codex`                      Text NOT NULL ,
        `definition`                 Text NOT NULL ,
        `launchDate`                 Date NOT NULL ,
        `acquisition`                Text NOT NULL ,
        `picture`                Varchar (50) NOT NULL ,
        `production`                Varchar (50) NOT NULL ,
        `stats`                      Varchar (50) NOT NULL ,
        `precepts`                   Varchar (50) ,
        `comparison`                 Varchar (50) ,
        `id_m3s4pL0v3_subCategories` Int NOT NULL
	,CONSTRAINT m3s4pL0v3_items_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4pL0v3_roles`
#------------------------------------------------------------

CREATE TABLE `m3s4pL0v3_roles`(
        `id`   Int  Auto_increment  NOT NULL ,
        `name` Varchar (50) NOT NULL
	,CONSTRAINT m3s4pL0v3_roles_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4pL0v3_users`
#------------------------------------------------------------

CREATE TABLE `m3s4pL0v3_users`(
        `id`                 Int  Auto_increment  NOT NULL ,
        `username`           Varchar (50) NOT NULL ,
        `password`           Varchar (50) NOT NULL ,
        `mail`               Varchar (50) NOT NULL ,
        `id_m3s4pL0v3_roles` Int NOT NULL
	,CONSTRAINT m3s4pL0v3_users_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4pL0v3_FAQ`
#------------------------------------------------------------

CREATE TABLE `m3s4pL0v3_FAQ`(
        `id`       Int  Auto_increment  NOT NULL ,
        `question` Text NOT NULL ,
        `answer`   Text NOT NULL
	,CONSTRAINT m3s4pL0v3_FAQ_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4pL0v3_searchPlayers`
#------------------------------------------------------------

CREATE TABLE `m3s4pL0v3_searchPlayers`(
        `id`                 Int  Auto_increment  NOT NULL ,
        `content`            Text NOT NULL ,
        `postDate`           Date NOT NULL ,
        `id_m3s4pL0v3_users` Int NOT NULL
	,CONSTRAINT m3s4pL0v3_searchPlayers_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4pL0v3_saleAnnouncement`
#------------------------------------------------------------

CREATE TABLE `m3s4pL0v3_saleAnnouncement`(
        `id`                 Int  Auto_increment  NOT NULL ,
        `title`              Varchar (50) NOT NULL ,
        `price`              Int NOT NULL ,
        `quantity`           Int NOT NULL ,
        `postDate`           Date NOT NULL ,
        `id_m3s4pL0v3_users` Int NOT NULL
	,CONSTRAINT m3s4pL0v3_saleAnnouncement_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4pL0v3_itemsParts`
#------------------------------------------------------------

CREATE TABLE `m3s4pL0v3_itemsParts`(
        `id`                 Int  Auto_increment  NOT NULL ,
        `name`               Varchar (50) NOT NULL ,
        `id_m3s4pL0v3_items` Int NOT NULL
	,CONSTRAINT m3s4pL0v3_itemsParts_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `announcementNeedsParts`
#------------------------------------------------------------

CREATE TABLE `announcementNeedsParts`(
        `id`                            Int NOT NULL ,
        `id_m3s4pL0v3_saleAnnouncement` Int NOT NULL
	,CONSTRAINT announcementNeedsParts_PK PRIMARY KEY (id,id_m3s4pL0v3_saleAnnouncement)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4pL0v3_forum`
#------------------------------------------------------------

CREATE TABLE `m3s4pL0v3_forum`(
        `id`                 Int  Auto_increment  NOT NULL ,
        `postDate`           Date NOT NULL ,
        `title`              Varchar (100) NOT NULL ,
        `content`            Text NOT NULL ,
        `id_m3s4pL0v3_forum` Int NOT NULL
	,CONSTRAINT m3s4pL0v3_forum_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `usersWantTalk`
#------------------------------------------------------------

CREATE TABLE `usersWantTalk`(
        `id`                 Int NOT NULL ,
        `id_m3s4pL0v3_users` Int NOT NULL
	,CONSTRAINT usersWantTalk_PK PRIMARY KEY (id,id_m3s4pL0v3_users)
)ENGINE=InnoDB;




ALTER TABLE `m3s4pL0v3_subCategories`
	ADD CONSTRAINT m3s4pL0v3_subCategories_m3s4pL0v3_categories0_FK
	FOREIGN KEY (`id_m3s4pL0v3_categories`)
	REFERENCES `m3s4pL0v3_categories`(`id`);

ALTER TABLE `m3s4pL0v3_items`
	ADD CONSTRAINT m3s4pL0v3_items_m3s4pL0v3_subCategories0_FK
	FOREIGN KEY (`id_m3s4pL0v3_subCategories`)
	REFERENCES `m3s4pL0v3_subCategories`(`id`);

ALTER TABLE `m3s4pL0v3_users`
	ADD CONSTRAINT m3s4pL0v3_users_m3s4pL0v3_roles0_FK
	FOREIGN KEY (`id_m3s4pL0v3_roles`)
	REFERENCES `m3s4pL0v3_roles`(`id`);

ALTER TABLE `m3s4pL0v3_searchPlayers`
	ADD CONSTRAINT m3s4pL0v3_searchPlayers_m3s4pL0v3_users0_FK
	FOREIGN KEY (`id_m3s4pL0v3_users`)
	REFERENCES `m3s4pL0v3_users`(`id`);

ALTER TABLE `m3s4pL0v3_saleAnnouncement`
	ADD CONSTRAINT m3s4pL0v3_saleAnnouncement_m3s4pL0v3_users0_FK
	FOREIGN KEY (`id_m3s4pL0v3_users`)
	REFERENCES `m3s4pL0v3_users`(`id`);

ALTER TABLE `m3s4pL0v3_itemsParts`
	ADD CONSTRAINT m3s4pL0v3_itemsParts_m3s4pL0v3_items0_FK
	FOREIGN KEY (`id_m3s4pL0v3_items`)
	REFERENCES `m3s4pL0v3_items`(`id`);

ALTER TABLE `announcementNeedsParts`
	ADD CONSTRAINT announcementNeedsParts_m3s4pL0v3_itemsParts0_FK
	FOREIGN KEY (`id`)
	REFERENCES `m3s4pL0v3_itemsParts`(`id`);

ALTER TABLE `announcementNeedsParts`
	ADD CONSTRAINT announcementNeedsParts_m3s4pL0v3_saleAnnouncement1_FK
	FOREIGN KEY (`id_m3s4pL0v3_saleAnnouncement`)
	REFERENCES `m3s4pL0v3_saleAnnouncement`(`id`);

ALTER TABLE `m3s4pL0v3_forum`
	ADD CONSTRAINT m3s4pL0v3_forum_m3s4pL0v3_forum0_FK
	FOREIGN KEY (`id_m3s4pL0v3_forum`)
	REFERENCES `m3s4pL0v3_forum`(`id`);

ALTER TABLE `usersWantTalk`
	ADD CONSTRAINT usersWantTalk_m3s4pL0v3_forum0_FK
	FOREIGN KEY (`id`)
	REFERENCES `m3s4pL0v3_forum`(`id`);

ALTER TABLE `usersWantTalk`
	ADD CONSTRAINT usersWantTalk_m3s4pL0v3_users1_FK
	FOREIGN KEY (`id_m3s4pL0v3_users`)
	REFERENCES `m3s4pL0v3_users`(`id`);
