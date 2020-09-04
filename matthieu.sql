#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

CREATE DATABASE `WarframeSanctuary`
CHARACTER SET `utf8`;
USE `WarframeSanctuary`;

#------------------------------------------------------------
# Table: `m3s4L0v3_categories`
#------------------------------------------------------------

CREATE TABLE `m3s4L0v3_categories`(
        `id`   Int  Auto_increment  NOT NULL ,
        `name` Varchar (50) NOT NULL
	,CONSTRAINT m3s4L0v3_categories_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4L0v3_subCategories`
#------------------------------------------------------------

CREATE TABLE `m3s4L0v3_subCategories`(
        `id`                      Int  Auto_increment  NOT NULL ,
        `name`                    Varchar (50) NOT NULL ,
        `id_m3s4L0v3_categories` Int NOT NULL
	,CONSTRAINT m3s4L0v3_subCategories_PK PRIMARY KEY (id)

	,CONSTRAINT m3s4L0v3_subCategories_m3s4L0v3_categories_FK FOREIGN KEY (id_m3s4L0v3_categories) REFERENCES m3s4L0v3_categories(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4L0v3_items`
#------------------------------------------------------------

CREATE TABLE `m3s4L0v3_items`(
        `id`                         Int  Auto_increment  NOT NULL ,
        `name`                       Varchar (50) NOT NULL ,
        `codex`                      Varchar (50) NOT NULL ,
        `definition`                 Text NOT NULL ,
        `acquisition`                Text NOT NULL ,
        `production`                 Varchar (50) ,
        `stats`                      Varchar (50) ,
        `precepts`                   Varchar (50) ,
        `comparison`                 Varchar (50) ,
        id_m3s4L0v3_subCategories Int NOT NULL
	,CONSTRAINT m3s4L0v3_items_PK PRIMARY KEY (id)

	,CONSTRAINT m3s4L0v3_items_m3s4L0v3_subCategories_FK FOREIGN KEY (id_m3s4L0v3_subCategories) REFERENCES m3s4L0v3_subCategories(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4L0v3_roles`
#------------------------------------------------------------

CREATE TABLE `m3s4L0v3_roles`(
        `id`   Int  Auto_increment  NOT NULL ,
        `name` Varchar (50) NOT NULL
	,CONSTRAINT m3s4L0v3_roles_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4L0v3_users`
#------------------------------------------------------------

CREATE TABLE `m3s4L0v3_users`(
        `id`                 Int  Auto_increment  NOT NULL ,
        `username`           Varchar (50) NOT NULL ,
        `password`           Varchar (50) NOT NULL ,
        `mail`               Varchar (50) NOT NULL ,
        id_m3s4L0v3_roles Int NOT NULL
	,CONSTRAINT m3s4L0v3_users_PK PRIMARY KEY (id)

	,CONSTRAINT m3s4L0v3_users_m3s4L0v3_roles_FK FOREIGN KEY (id_m3s4L0v3_roles) REFERENCES m3s4L0v3_roles(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4L0v3_FAQ`
#------------------------------------------------------------

CREATE TABLE `m3s4L0v3_FAQ`(
        `id`       Int  Auto_increment  NOT NULL ,
        `question` Text NOT NULL ,
        `answer`   Text NOT NULL
	,CONSTRAINT m3s4L0v3_FAQ_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4L0v3_saleAnnouncement`
#------------------------------------------------------------

CREATE TABLE `m3s4L0v3_saleAnnouncement`(
        `id`                 Int  Auto_increment  NOT NULL ,
        `title`              Varchar (50) NOT NULL ,
        `price`              Int NOT NULL ,
        `quantity`           Int NOT NULL ,
        `postDate`           Date NOT NULL ,
        id_m3s4L0v3_users Int NOT NULL
	,CONSTRAINT m3s4L0v3_saleAnnouncement_PK PRIMARY KEY (id)

	,CONSTRAINT m3s4L0v3_saleAnnouncement_m3s4L0v3_users_FK FOREIGN KEY (id_m3s4L0v3_users) REFERENCES m3s4L0v3_users(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4L0v3_itemsParts`
#------------------------------------------------------------

CREATE TABLE `m3s4L0v3_itemsParts`(
        `id`                 Int  Auto_increment  NOT NULL ,
        `name`               Varchar (50) NOT NULL ,
        id_m3s4L0v3_items Int NOT NULL
	,CONSTRAINT m3s4L0v3_itemsParts_PK PRIMARY KEY (id)

	,CONSTRAINT m3s4L0v3_itemsParts_m3s4L0v3_items_FK FOREIGN KEY (id_m3s4L0v3_items) REFERENCES m3s4L0v3_items(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4L0v3_forumCategories`
#------------------------------------------------------------

CREATE TABLE `m3s4L0v3_forumCategories`(
        `id`   Int  Auto_increment  NOT NULL ,
        `name` Varchar (50) NOT NULL
	,CONSTRAINT m3s4L0v3_forumCategories_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `_m3s4L0v3_forumSubCategories`
#------------------------------------------------------------

CREATE TABLE `_m3s4L0v3_forumSubCategories`(
        `id`                           Int  Auto_increment  NOT NULL ,
        `name`                         Varchar (50) NOT NULL ,
        id_m3s4L0v3_forumCategories Int NOT NULL
	,CONSTRAINT _m3s4L0v3_forumSubCategories_PK PRIMARY KEY (id)

	,CONSTRAINT _m3s4L0v3_forumSubCategories_m3s4L0v3_forumCategories_FK FOREIGN KEY (id_m3s4L0v3_forumCategories) REFERENCES m3s4L0v3_forumCategories(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4L0v3_forumQuestions`
#------------------------------------------------------------

CREATE TABLE `m3s4L0v3_forumQuestions`(
        `id`                               Int  Auto_increment  NOT NULL ,
        `postDate`                         Datetime NOT NULL ,
        `title`                            Text NOT NULL ,
        `content`                          Text NOT NULL ,
        `id_m3s4L0v3_users`               Int NOT NULL ,
        `id__m3s4L0v3_forumSubCategories` Int NOT NULL
	,CONSTRAINT m3s4L0v3_forumQuestions_PK PRIMARY KEY (id)

	,CONSTRAINT m3s4L0v3_forumQuestions_m3s4L0v3_users_FK FOREIGN KEY (id_m3s4L0v3_users) REFERENCES m3s4L0v3_users(id)
	,CONSTRAINT m3s4L0v3_forumQuestions__m3s4L0v3_forumSubCategories0_FK FOREIGN KEY (id__m3s4L0v3_forumSubCategories) REFERENCES _m3s4L0v3_forumSubCategories(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `m3s4L0v3_forumResponses`
#------------------------------------------------------------

CREATE TABLE `m3s4L0v3_forumResponses`(
        `id`                          Int  Auto_increment  NOT NULL ,
        `postDate`                    Datetime NOT NULL ,
        `content`                     Text NOT NULL ,
        `id_m3s4L0v3_users`          Int NOT NULL ,
        `id_m3s4L0v3_forumQuestions` Int NOT NULL
	,CONSTRAINT m3s4L0v3_forumResponses_PK PRIMARY KEY (id)

	,CONSTRAINT m3s4L0v3_forumResponses_m3s4L0v3_users_FK FOREIGN KEY (id_m3s4L0v3_users) REFERENCES m3s4L0v3_users(id)
	,CONSTRAINT m3s4L0v3_forumResponses_m3s4L0v3_forumQuestions0_FK FOREIGN KEY (id_m3s4L0v3_forumQuestions) REFERENCES m3s4L0v3_forumQuestions(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: `announcementNeedsParts`
#------------------------------------------------------------

CREATE TABLE `announcementNeedsParts`(
        `id`                            Int NOT NULL ,
        `id_m3s4L0v3_saleAnnouncement` Int NOT NULL
	,CONSTRAINT announcementNeedsParts_PK PRIMARY KEY (id,id_m3s4L0v3_saleAnnouncement)

	,CONSTRAINT announcementNeedsParts_m3s4L0v3_itemsParts_FK FOREIGN KEY (id) REFERENCES m3s4L0v3_itemsParts(id)
	,CONSTRAINT announcementNeedsParts_m3s4L0v3_saleAnnouncement0_FK FOREIGN KEY (id_m3s4L0v3_saleAnnouncement) REFERENCES m3s4L0v3_saleAnnouncement(id)
)ENGINE=InnoDB;

