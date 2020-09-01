-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 24 août 2020 à 07:44
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `warframesanctuary`
--

-- --------------------------------------------------------

--
-- Structure de la table `announcementneedsparts`
--

DROP TABLE IF EXISTS `announcementneedsparts`;
CREATE TABLE IF NOT EXISTS `announcementneedsparts` (
  `id` int(11) NOT NULL,
  `id_m3s4pL0v3_saleAnnouncement` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_m3s4pL0v3_saleAnnouncement`),
  KEY `announcementNeedsParts_m3s4pL0v3_saleAnnouncement1_FK` (`id_m3s4pL0v3_saleAnnouncement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `m3s4pl0v3_categories`
--

DROP TABLE IF EXISTS `m3s4pl0v3_categories`;
CREATE TABLE IF NOT EXISTS `m3s4pl0v3_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `m3s4pl0v3_categories`
--

INSERT INTO `m3s4pl0v3_categories` (`id`, `name`) VALUES
(1, 'Warframe'),
(2, 'Armes Principales'),
(3, 'Armes Secondaires'),
(4, 'Armes de Mêlées'),
(5, 'Compagnons'),
(6, 'Sentinelles'),
(7, 'Archwings'),
(8, 'ArchFusils'),
(9, 'ArchMêlées'),
(10, 'Ressources');

-- --------------------------------------------------------

--
-- Structure de la table `m3s4pl0v3_faq`
--

DROP TABLE IF EXISTS `m3s4pl0v3_faq`;
CREATE TABLE IF NOT EXISTS `m3s4pl0v3_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `m3s4pl0v3_forum`
--

DROP TABLE IF EXISTS `m3s4pl0v3_forum`;
CREATE TABLE IF NOT EXISTS `m3s4pl0v3_forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postDate` date NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `id_m3s4pL0v3_forum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `m3s4pL0v3_forum_m3s4pL0v3_forum0_FK` (`id_m3s4pL0v3_forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `m3s4pl0v3_items`
--

DROP TABLE IF EXISTS `m3s4pl0v3_items`;
CREATE TABLE IF NOT EXISTS `m3s4pl0v3_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `codex` text NOT NULL,
  `definition` text NOT NULL,
  `acquisition` text NOT NULL,
  `production` varchar(50) NOT NULL,
  `stats` varchar(50) NOT NULL,
  `precepts` varchar(50) DEFAULT NULL,
  `comparison` varchar(50) DEFAULT NULL,
  `id_m3s4pL0v3_subCategories` int(11) NOT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `avantages` text DEFAULT NULL,
  `inconvénients` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `m3s4pL0v3_items_m3s4pL0v3_subCategories0_FK` (`id_m3s4pL0v3_subCategories`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `m3s4pl0v3_items`
--

INSERT INTO `m3s4pl0v3_items` (`id`, `name`, `codex`, `definition`, `acquisition`, `production`, `stats`, `precepts`, `comparison`, `id_m3s4pL0v3_subCategories`, `picture`, `avantages`, `inconvénients`) VALUES
(1, 'Gauss', 'Ne cessez jamais de bouger. La batterie de Gauss est rechargée par le mouvement, alimentant ainsi ses capacités cinétiques dévastatrices. Ils ne peuvent pas tuer ce qu\'ils ne peuvent pas toucher.', 'Les moteurs sont prêts pour l\'allumage. Systèmes de circulation de liquide de refroidissement en ligne. Tourné dans l\'overdrive cinétique, le speedster Gauss laisse sa concurrence au milieu de la poussière. Accélérez et courez à travers de vastes paysages ou mers. Rechargez le pouvoir des frappes hostiles et réduisez la force de leur impact. Gauss a démarré dans la Update 25.7 : Conquérant d\'Altra. ', 'Les composants de Gauss s\'obtiennent dans le mod de jeu Perturbation (Rotation C) sur Kelpie, Sedna. Chaque composant possède 10% de chance d\'être obtenu.', '../assets/img/production/production_Gauss.png', '../assets/img/stats/stats_Gauss.png', NULL, NULL, 10, '../assets/img/picture/picture_Gauss.png', '', ''),
(2, 'Mesa', 'Pourvue d\'une main sûre et de réflexes aiguisés, Mesa est une tireuse hors-paire.', 'Mesa est une Warframe basée sur le combat à distance. Ses capacités lui permettent d\'abattre toutes les cibles qui se présentent et même de renforcer son armement ainsi que celui de ses alliés, tout en neutralisant les armes à feu ennemies.', 'Pour obtenir les composants de Mesa il faut vaincre Alad V Mutaliste sur Eris.', '../assets/img/production/production_Mesa.png', '../assets/img/stats/stats_Mesa.png', NULL, NULL, 10, '../assets/img/picture/picture_Mesa.png', '', ''),
(3, 'Excalibur', 'Ils avaient gagné. Ils avaient retourné nos armes et notre technologie contre nous. Plus nous avancions, plus importantes étaient nos pertes. La guerre était perdue à moins que nous trouvions une solution. Dans le désespoir nous avons cherché dans le Néant. Le noir absolu, les ténèbres de l\'espace qui dépassent notre science et notre entendement.\r\n\r\nNous avons pris les quelques déséquilibrés revenus de cet endroit. Nous les avons entourés d\'une armure, un catalyseur pour leur affliction. nous leur avons donné des armes des temps anciens. Fusils et lames. Un nouveau guerrier, un nouveau code était né. Ces rejets, ces Tennos, allaient devenir nos sauveurs. Une caste de Dieux Guerriers de métal qui frapperaient avec fureur nos ennemis d\'une façon qu\'ils ne pourraient jamais comprendre.\r\n\r\nExcalibur fut le premier. ', 'Excalibur est une Warframe dont le thème est l\'épée. En brandissant n\'importe quelle lame, Excalibur découpe ses ennemis. Elle est l\'une des trois Warframes de départ. ', 'Les schémas de ses composants peuvent être obtenus sur le Capitaine Vor et le Lieutenant Lech Kril, sur la mission Assassinat du secteur War, Mars.', '../assets/img/production/production_Excalibur.png', '../assets/img/stats/stats_Excalibur.png', NULL, NULL, 10, '../assets/img/picture/picture_Excalibur.png', '', ''),
(4, 'Nekros', 'Nekros utilises ses sombres pouvoirs pour manipuler ses ennemis, vivants comme morts.', 'Nekros est une Warframe basée sur la manipulation de la mort sortie à l\'Update 10. Il excelle dans le rôle de support.', 'Les composants de Nekros peuvent être obtenus sur Lephantis, dans les Épaves Orokin, en utilisant une Clé Epave Assassinat. ', '../assets/img/production/production_Nekros.png', '../assets/img/stats/stats_Nekros.png', NULL, NULL, 10, '../assets/img/picture/picture_Nekros.png', '', ''),
(5, 'Chroma', 'Un véritable maître des éléments, Chroma est capable de changer l\'élément de ses dégâts en changeant la couleur de son énergie.', 'La représentation bestiale des forces élémentaires de la nature, Chroma ChromaIcon272 déconcerte ses ennemis et renforce ses alliés grâce à ses caprices élémentaires.', 'Le Schéma principal de Chroma s\'obtient en récompense de la quête La Nouvelle Etrange. Ceux des composants s\'obtiennent ensuite en complétant différentes Jonctions:</p>\r\n\r\n<ul>\r\n    <li>Schéma Neuroptiques – jonction Uranus</li>\r\n    <li>Schéma Châssis – jonction Neptune</li>\r\n    <li>Schéma Système – jonction Pluton</li>\r\n</ul> \r\n\r\n<p>Il est également possible d\'acheter des examplaires supplémentaires chez le Céphalon Simaris.', '../assets/img/production/production_Chroma.png', '../assets/img/stats/stats_Chroma.png', NULL, NULL, 10, '../assets/img/picture/picture_Chroma.png', NULL, NULL),
(6, 'Nova', 'Nova utilise l\'énergie électromagnétique pour contenir et contrôler de l\'antimatière hautement volatile qui lui fournit ses pouvoirs.', 'Nova est une Warframe basée sur l\'antimatière. Elle est un peu fragile, avec une faible capacité de bouclier, une vie moyenne et aucune capacité de défense. En revanche, elle possède des capacités extrêmement offensives capable de détruire une vague entière d\'ennemis.', 'Les schémas de Nova sont obtenus en éliminant le Raptor, sur le secteur de Naamah, Europe.', '../assets/img/production/production_Nova.png', '../assets/img/stats/stats_Nova.png', NULL, NULL, 10, '../assets/img/picture/picture_Nova.png', NULL, NULL),
(7, 'Nyx', 'Son contrôle de l\'esprit et ses attaques psychiques font de Nyx une adversaire redoutable. Malgré sa relative fragilité, elle pourra s\'insinuer dans l\'esprit et modifier le comportement des ennemis, renversant ainsi le cours du combat.', 'Nyx est une Warframe orientée sur le psychisme et le contrôle mental. Elle a été introduite dans la mise à jour 6. Elle s\'avère être une très bonne alliée grâce à sa capacité à perturber les troupes ennemies ou à les rallier à la cause des Tennos.', 'Les composants du schéma peuvent être obtenu sur le boss Phorid en alerte invasion Infestés.', '../assets/img/production/production_Nyx.png', '../assets/img/stats/stats_Nyx.png', NULL, NULL, 10, '../assets/img/picture/picture_Nyx.png', NULL, NULL),
(8, 'Rhino', 'Rhino est la Warframe la plus lourde, combinant des capacités offensives et défensives.', 'Rhino est la plus imposante de toutes les Warframes. Sa force lui permet de combiner des attaques offensives dévastatrices avec un grand pouvoir de défense. Tank du champ de bataille, la Warframe Rhino est spécialisée dans la tactique de la force brute, comme frapper ses adversaires avec ses pouvoirs, et faire trembler le sol pour faire voler ses ennemis et les rendre vulnérables aux attaques de mêlée. Il peut aussi se rendre invincible au cœur du combat, attirer l\'attention des ennemis et les détruire.', 'Les composants de Rhino peuvent être obtenus sur le Jackal (Fossa, Vénus).', '../assets/img/production/production_Rhino.png', '../assets/img/stats/stats_Rhino.png', NULL, NULL, 10, '../assets/img/picture/picture_Rhino.png', NULL, NULL),
(9, 'Amprex', 'L\'Amprex envoie un rayon continu d’électricité à haut voltage qui est capable d\'arquer vers les ennemis à proximité. Cette arme est excellente pour le contrôle des foules.', 'L\'Amprex peut facilement détruire un large groupe d\'ennemis en tirant plusieurs arcs électriques qui peuvent s\'enchaîner entre les unités. Son fonctionnement est similaire au Synapse, qui distribue plus de dégâts mais est limité à une seule cible.', 'L\'Amprex est achetable dans le laboratoire d\'Énergie dans le Dojo après avoir recherché le Dera ou dans le marché pour 225 Platinum.', '../assets/img/production/production_Amprex.png', '../assets/img/stats/stats_Amprex.png', NULL, NULL, 2, '../assets/img/picture/picture_amprex.png', '<ul>   \r\n <li>Cadence de tir élevée.\r\n   <li>Spécialisé dans les dommages Électrique Electrique, cela le rend très efficace contre les robots et les machines.</li>\r\n       <li>En utilisant des mods élémentaires, il est facile d\'obtenir des effets Magnétique</li> Magnetic w, Corrosif Corrosive w ou de Radiation Radiation w. </li>\r\n   <li> Crée des arcs électriques entre les ennemis.</li>\r\n   <li> Les tirs multiples frappent les ennemis dans toutes les directions.</li>\r\n   <li> De toute les armes à rayon continu, il dispose du deuxième plus haut taux de chance de critique, derrière le Synapse.</li>\r\n    <li>Très bonne chances de Statut.</li>\r\n</ul>', '<ul>\r\n<li>Dégâts de base assez faibles.</li>\r\n<li>Consommation de munitions élevée - dépense des munitions très rapidement.</li>\r\n<li>Portée initiale limitée de 18 mètres (modable).</li>\r\n\r\n    <li>Les arcs électriques ont une portée de 10m (non modable). </li>\r\n\r\n<li>Pas de dégâts Tranchant, de Perforation , ni d\'Impact.</li>\r\n<li>Pas de polarité.</li>\r\n<li>Les dégats du rayon commence à 20% de la valeur totale et se charge graduellement à mesure que le tir est maintenu, jusqu\'à atteindre 100% de ses dégats en 0.6 seconde. Si le tir n\'est pas maintenu, la charge sera perdu au bout de 0.8 seconde.</li>\r\n</ul>'),
(10, 'Afuris', 'Un pistolet Furis équipé dans chaque main. Deux fois plus de chargeur et de cadence, mais le temps de rechargement est doublé et la précision est réduite.', 'Les Afuris font des dégâts de Perforation avec une grande cadence de tir mais de faibles dégâts.', 'Le schéma de l\'Afuris est trouvable dans le marché.', '../assets/img/production/production_Afuris.png', '../assets/img/stats/stats_Afuris.png', NULL, NULL, 5, '../assets/img/picture/picture_Afuris.png', '    Hauts dégâts de Perforation - efficaces contre l\'Armure, contre les Grineers. \r\n\r\n    Haute cadence de tir.\r\n    Haute précision.\r\n    Un emplacement polarisé, parfait pour Mutation de Munitions de Pistolet.\r\n    Efficace contre les grands groupes d\'ennemis. ', '    Faibles Dégâts de base.\r\n        Faibles dégâts d\'Impact et de Tranchant - moins efficaces contre les Boucliers et la Santé. \r\n    Très faibles chances de Coup Critique.\r\n    Faibles chances de Statut.\r\n    Économie de munitions très peu efficace.\r\n    Très imprécis au-delà de la moyenne portée.\r\n    Long temps de recharge. '),
(11, 'Akbolto', 'Un Bolto équipé dans chaque main. Chargeur et cadence doublés mais temps de recharge doublé aussi. Précision réduite par rapport à celle du Bolto seul.', 'Les AkBolto sont la forme double du Bolto. Comme les autres armes doubles, ils possèdent un chargeur deux fois plus grand et une cadendce de tir augmentée bien que le temps de rechargement soit plus long.', 'Le schéma de l\'Akbolto peut être acquis dans le marché.', '../assets/img/production/production_Akbolto.png', '../assets/img/stats/stats_Akbolto.png', NULL, NULL, 5, '../assets/img/picture/picture_Akbolto.png', ' Dégâts de base élevés.\r\nBonne cadence de tir.\r\nGrand chargeur.\r\nPossède une polarité.\r\nPas de dispersion. La dispersion augmente légèrement lors de tirs rapides.\r\nLes carreaux peuvent épingler les victimes aux murs.\r\nLes carreaux peuvent transpercer un ennemi et infliger des dégats aux ennemis situés derrière le premier touché, par rapport au joueur.', '     Les projectiles ont un temps de trajet, il est alors plus difficile de toucher des cibles mouvantes à longues distances.\r\n    Gâchette semi-automatique, rendant plus difficile d\'utiliser la haute cadence de tir.\r\n    Long temps de rechargement.\r\n    Faibles chances de status. '),
(13, 'Atomos', 'Ce canon à particules génère un rayon condensé de plasma surchauffé conçu pour fondre la roche et en extraire les minerais, ou transformer vos ennemis en tas de scorie en fusion.', 'L\'Atomos est un canon à particules Grineer, qui tire un rayon de feu qui saute entre les ennemis.', 'Le schéma de l\'Atomos peut être acheté sur le marché pour 30,000 crédits.', '../assets/img/production/production_Atomos.png', '../assets/img/stats/stats_Atomos.png', NULL, NULL, 4, '../assets/img/picture/picture_Atomos.png', '    Dégâts innés de Feu, efficace contre les Infestés et la Chair Clonée.\r\n    Peut toucher plusieurs ennemis avec un seul rayon.\r\n    Possède une polarité D. ', 'Le rayon a une portée limitée de 15 mètres.'),
(14, 'Magnus', 'Le revolver polyvalent Magnus est une arme secondaire mortelle pour n\'importe quelle Tenno.', 'Le Magnus a été ajouté lors de l\'Update 11.2.0 et semble être similaire à un Vasto privilégient les dégâts de types Impact. ', '', '../assets/img/production/production_Magnus.png', '../assets/img/stats/stats_Magnus.png', NULL, NULL, 4, '../assets/img/picture/picture_Magnus.png', 'Dégâts d\'Impact Icon proc impact blanc efficace contre les boucliers.\r\nGrande chance de coup critique.\r\nPlus haute chances de statut des armes secondaire simple.\r\nPolarité V.', '    Recul important.\r\n    Relativement inefficace contre les infestés. '),
(19, 'Kunai', 'Les dagues de lancer Kunai offrent une alternative silencieuse aux armes de poings traditionnelles. Parfaites pour les assassins.', 'Les Kunai sont une arme secondaire, introduits dans l\'Update 8. Ils disposent d\'un grand taux de dégâts par seconde, mais ils peuvent être difficile à utiliser à cause de la gravité dont ils sont victimes, comme les flèches d\'arc.', 'Le schéma des Kunai est achetable au marché.', '../assets/img/production/production_Kunai.png', '../assets/img/stats/stats_Kunai.png', NULL, NULL, 6, '../assets/img/picture/picture_Kunai.png', '     Hauts dégâts de Perforation - efficaces contre l\'Armure. \r\n\r\n    Silencieux.\r\n    Ignore l\'armure. \r\nPeut toucher plusieurs cibles.\r\nVitesse de rechargement très rapide (0.8 seconde).\r\nCadence de tir rapide.\r\nLes projectiles peuvent toucher plusieurs cibles à la fois grâce à l\'empalement, les corps volent en ligne droite et peuvent endommager d\'autres ennemis', '     Faibles dégâts d\'Impact et Tranchant  - moins efficaces contre les Boucliers et la Santé.\r\n    Faibles chances de Coup Critique.\r\n    Faibles chances de dégâts critiques, inférieures à la moyenne.\r\n    Faibles chances de Statut. '),
(20, 'Despair', 'Utilisés par les Stalkers, les lames de lancer Despair ont un tranchant monofilament pouvant pénétrer une Warframe.', 'Une des 3 armes de prédilection du Stalker.', 'Les Despair ne peuvent être achetés dans le Marché, mais ils sont inclus dans le pack Quel Stalker ?. Leur schéma peut être obtenu en faisant fuir le Stalker.', '../assets/img/production/production_Despair.png', '../assets/img/stats/stats_Despair.png', NULL, NULL, 6, '../assets/img/picture/picture_Despair.png', ' Hauts dégâts de Perforation - efficaces contre l\'Armure.\r\nBonnes chances de Coup Critique.\r\nBonnes chances de Statut.\r\nSilencieux.\r\nSemble avoir une meilleure portée que les Kunai.\r\nPeut traverser les ennemis, ce qui permet de toucher plusieurs cible avec un seul lancer.\r\nComme les Kunai, les Despair ont deux emplacements de polarités V idéal pour les Mods \"Nuée de Dard\" et \"Canon à Diffusion\" pour un maximum de dommages. ', 'Les projectiles ont un temps de \"trajet\", inadapté contre les cibles à longue distance.\r\n\r\n    Trajectoire assez aléatoire, se qui rend les lancers de longue distance difficiles.\r\n    Même si ils sont répertoriés comme ayant une précision de 100%, les Despair ont une trajectoire assez hasardeuse, bien que la diffusion entre chaque tir soit serrée.\r\n    Le couteau frappera exactement où l\'utilisateur cible avec son réticule, le vecteur qu\'il faut pour y arriver peut diverger. \r\n\r\nNécessite une quantité supérieure du nombre de matériaux par rapport aux Kunai.\r\nPendant que vous tenez cette arme, votre attaque glissante ne gagne pas de vitesse.\r\nN\'étourdit pas comme les Kunai. '),
(21, 'Nikana Dragon', 'Le Dragon Nikana est forgé à partir d\'un ancien acier Tenno. C\'est une arme de maître, seul le plus digne des Tenno peut la manier.', 'Le Nikana Dragon est une lame puissante, de type katana, de conception Tenno. Cette arme fut introduite lors de l\'Update 13. ', 'Le schéma du Nikana Dragon est achetable au marché.', '../assets/img/production/production_NikanaD.png', '../assets/img/stats/stats_NikanaD.png', NULL, NULL, 7, '../assets/img/picture/picture_NikanaD.png', '     Forts dégâts de base.\r\n    Forts dégâts de type Tranchant, efficace contre les Infestés et la Chair.\r\n    Les attaques normales ont une grande portée et peuvent toucher plusieurs cibles par coups.\r\n    Permet de courir tout en attaquant.\r\n    Possède une polarité V, parfait pour booster les mods d\'attaque.\r\n    Possède une polarité D, idéal pour Vent du Nord ou des mods de Canalisation comme Frappe Vitale.\r\n    Bien moddé, les dégâts Tranchant peuvent trancher les ennemis en deux. ', '     Faibles dégâts d\'Impact et de Perforation, ce qui la rend moins efficace contre les Boucliers et Armures.\r\n    2 combos Tranchant sans une posture.\r\n    Les attaques aériennes ont une faible zone d\'impact.\r\n    Requiert un Cristal d\'Argon pour être fabriquée.\r\n    Requiert le Rang 8, et ne peut donc être obtenu que tard dans le jeu. '),
(22, 'Orthos', 'L\'Orthos est un bâton rare à double tranchant de facture Tenno.', 'Ceux qui prennent le temps de la maîtriser parlent de son impressionnante allonge et de sa capacité à toucher plusieurs cibles.', 'Le sch\"ma de l\'Orthos est achetable au marché.', '../assets/img/production/production_Orthos.png', '../assets/img/stats/stats_Orthos.png', NULL, NULL, 7, '../assets/img/picture/picture_Orthos.png', '    Grands dégâts de charge.\r\n    Triple dégâts contre les Infestés (sauf Anciens).\r\n    Étourdit à chaque coup.\r\n    Grande portée et grand angle d\'attaque.\r\n    L\'attaque chargée possède un grand rayon et touche aussi derrière le joueur.\r\n    Les attaques de zone peuvent toucher jusqu\'à 5 cibles.\r\n    L\'attaque glissante inflige 100 dégâts.\r\n    L\'attaque chargée peut toucher les cibles à terre et rampantes. ', 'Pas de polarité.\r\nLes attaques sautées ne renversent pas, elles étourdissent seulement mais dans une grande zone.\r\nLes attaques normales vous réduisent à faire des petits pas.\r\nLes attaques normales touchent un peu aléatoirement pendant leur animation, rendant la visée difficile. '),
(23, 'Doubles Ichors', 'Les rapides et brutales haches Doubles Ichor tranchent rapidement les ennemis avec une haute probabilité d\'infliger des dégâts critiques.', 'Les Doubles Ichor sont une paire de haches jumelles courtes infestées de forme osseuse ou de chitine, tenant dans chaque main. Elles sont seulement obtenables dans le laboratoire de Recherche Biologique d\'un Dojo. C\'est une sorte de double Mire.', 'Le schéma des Doubles Ichors est obtenable dans le laboratoire biologique du dojo.', '../assets/img/production/production_IchorsD.png', '../assets/img/stats/stats_IchorsD.png', NULL, NULL, 8, '../assets/img/picture/picture_IchorsD.png', 'Chance de critique élevé.\r\nDégâts critiques très élevés.\r\nDégâts très élevés lors d\'attaques glissées.\r\nUn emplacement de polarité D.\r\nPeut toucher plusieurs cibles. ', '    Requière un Forma pour être fabriquées.\r\n    Faible portée.\r\n    Les dégâts de Poison Poison b sont moins efficace contre les Robots et les Fossilisés.\r\n    Les mods de dégâts physique comme Bord Dentelé n\'ont aucun effet sur cette arme.\r\n    Grande consommation de l\'endurance lors d\'attaques.\r\n    Nécessite un Rang de Maîtrise 6. '),
(24, 'Doubles Hachoirs', 'Massacrez vos ennemis avec des lames brutales dans chaque mains.', 'Les Doubles Hachoirs sont une arme de mêlée sortie dans la Update 8.0, un simple Hachoir remplace l’Épée de Mâchoire du Massacreur depuis la Update 8.0. ', 'Le schéma des Doubles Hachoirs est achetable au marché.', '../assets/img/production/production_HachoirsD.png', '../assets/img/stats/stats_HachoirsD.png', NULL, NULL, 8, '../assets/img/picture/picture_HachoirsD.png', '    Fort dégâts Tranchant - Efficace face aux Infestés\r\n    Attaque plusieurs cibles.\r\n    Un emplacement de polarité V.\r\n    Chance de critique et de dégâts des coups critiques les plus élevés des armes de mêlée après le Fragor Prime.\r\n    Étourdit à chaque coup.\r\n    La polarité de la posture Serpents Croisés correspond.\r\n    Peut utiliser le mod Lames Justicières. ', '    Très faible angle de l\'attaque aérienne.\r\n    Faible vitesse d\'attaque.\r\n    Faible portée. '),
(25, 'Scindo', 'La SCINDO est une hache de guerre lourde de conception Tenno. Peu agile, peu rapide, mais capables de frappes dévastatrices sur plusieurs cibles à la fois.', 'La scindo a été pendant longtemps l\'arme avec le plus de puissance de frappe.', 'Le schéma de la Scindo est achetable dans le marché', '../assets/img/production/production_Scindo.png', '../assets/img/stats/stats_Scindo.png', NULL, NULL, 9, '../assets/img/picture/picture_Scindo.png', 'Très gros dégâts.\r\nTouche plusieurs cibles en un coup.\r\n\r\n    Grand angle d\'attaque. \r\n\r\nTriple dégâts contre les Infestés (sauf Anciens).\r\nLes attaques sautées envoient les ennemis à 6 mètres. ', '    Attaques glissantes lente.\r\n    Déplacement lent pendant les attaques régulières.\r\n    Pas d\'emplacement de polarité. '),
(26, 'Fragor', 'Un grand marteau à deux mains, le FRAGOR requiert une grande force pour être manié, mais les impacts sont suffisament puissants pour envoyer valser des groupes d\'ennemis.', 'Le Fragor est une arme lourde infligeant des dégâts élevés mais qui possède une faible vitesse d\'attaque bien que comblé par des bons dégâts critiques.', 'Le schéma du Fragor est achetable au marché.', '../assets/img/production/production_Fragor.png', '../assets/img/stats/stats_Fragor.png', NULL, NULL, 9, '../assets/img/picture/picture_Fragor.png', '    Dégâts d\'Impact élevés - efficace contre le Bouclier.\r\n    La zone d\'effet des attaques sautées est de 5 mètres et renverse les ennemis.\r\n    Peut toucher plusieurs cibles à la fois.\r\n    Donne un élan pendant l\'attaque normale, diminuant le risque d\'être renversé.\r\n    Chance de critique élevé et bon dégâts critiques.\r\n    La polarité de la posture est V, ce qui correspond à la posture Ruine Dévastatrice. ', '    Vitesse d\'attaque lente de base.\r\n    Longue animation d\'exécution. '),
(27, 'Gram', 'L\'épée lourde à deux mains dénommée GRAM requiert une certaine force pour être maniée mais est reconnue pour sa capacité à fendre les ennemis.', 'La Gram est une arme de mêlée lourde comme le Fragor, Galatine, Jat Kittag, Magistar et la Scindo(Prime).', 'Le schéma de la Gram est achetable au marché.', '../assets/img/production/production_Gram.png', '../assets/img/stats/stats_Gram.png', NULL, NULL, 9, '../assets/img/picture/picture_Gram.png', '    Chaque attaque (les Finisher aussi) a une chance de lier les ennemis.\r\n    Une des armes lourdes les plus rapides avec la Galatine.\r\n    Les attaques glissées ont un large rayon (comme la Scindo).\r\n    Triple dégâts contre les Infestés (non Anciens).\r\n    L\'attaque sautée renverse les ennemis dans une large zone.\r\n    Beaucoup de customisation.\r\n    La Gram secoue beaucoup moins l\'écran que les autres armes lourdes de mêlée.\r\n    Lors de l\'attaque glissée, les chances d\'être interrompu sont diminuées. ', '    Aucune polarité.\r\n    Faibles dégâts de base.\r\n    Lors de l\'attaque glissée, vous allez être réduit à rester sur place (comme les autres armes de mêlée lourde).\r\n    Les attaques normales n\'ignorent pas l\'armure. '),
(28, 'Doubles Skana', 'Une Skana courte dans chaque main. Peuvent toucher plusieurs cibles à la fois.', 'Les Doubles Skana ont des statistiques identiques à la version simple. Cependant, la portée des Doubles Skana est plus faible et ils peuvent toucher plusieurs cibles. Les Doubles Skana utilisent différentes animations d\'attaque.', 'Le schéma des Doubles Skana est achetable au marché.', '../assets/img/production/production_SkanaD.png', '../assets/img/stats/stats_SkanaD.png', NULL, NULL, 8, '../assets/img/picture/picture_SkanaD.png', '    Les attaques en plein saut étourdissent les ennemis, sauf les boss.\r\n    La polarité de posture correspond à la posture Serpents Croisés.\r\n    Ne requiert aucun Palier minimum.\r\n    Ne nécessite que peu de ressources pour être fabriqués. ', '    Courte portée.\r\n    Plus faibles dégâts que les autres armes de mêlée doubles.\r\n    Faibles chances de critique. '),
(29, 'Boar', 'Un fusil à pompe peu précis et disposant d\'un fort recul, mais capable de vider son chargeur en full auto. Le Boar est le plus efficace à courte portée.', 'Le Boar est un fusil à pompe automatique Tenno. Comparé aux autres fusils à pompe, le Boar est moins précis et inflige moins de dégâts par plomb. Possédant le cône de dispersion le plus large, le Boar excelle dans l\'affrontement de larges groupes d\'ennemis peu blindés et proches. Il devient cependant inefficace à moyenne et longue portée. Cette arme compense sa courte portée par une cadence de tir élevée et un grand chargeur.', 'Le schéma du Boar s\'obtient sur les Soldats Drekars depuis l\'Update 17.7.', '../assets/img/production/production_Boar.png', '../assets/img/stats/stats_Boar.png', NULL, NULL, 3, '../assets/img/picture/picture_Boar.png', '     Forts dégâts par seconde.\r\n    Haute Cadence de Tir.\r\n    Grand chargeur.\r\n    Nombre élevé de plombs par tir.\r\n    Dispersion élevée, idéale pour du contrôle de foule. ', '     Inefficace au delà de la courte portée à cause de la dispersion et dispose d\'une perte de dégâts selon la distance.\r\n    Peu économe en munitions.\r\n    Troisième plus faibles chances de Coup Critique de tous les fusils à pompe.\r\n    Plus faibles dégâts de base de tous les fusils à pompe (avec le Kohm). '),
(30, 'Arca Plasmor', 'Etourdissez et mettez à terre vos cibles grâce aux tirs de plasma de ce fusil à pompe Corpus . Les ennemis y survivant seront consumés par les radiations.', 'L\'Arca Plasmor est un Fusil à Pompe à plasma infligeant de hauts dégâts de Radiation avec un proc garanti de dégâts d\'Impact.', 'Le schéma de l\'Arca Plasmor s\'obtient dans le laboratoire energie du dojo.', '../assets/img/production/production_ArcaP.png', '../assets/img/stats/stats_ArcaP.png', NULL, NULL, 3, '../assets/img/picture/picture_ArcaP.png', 'Hauts dégâts de base.\r\nHautes chances de Coup Critique.\r\nHautes chances de Statut. \r\nGrande capacité de chargeur.\r\nZoom faible, ce qui permet de couvrir des zones larges tout en visant plus facilement.\r\nLes ennemis tués auront leurs cadavres vaporisés, idéal en Furtivité et/ou en rendant l\'arme silencieuse. ', 'Dégâts décroissants avec la distance.\r\nChances de dégâts critiques sous la moyenne.\r\nAucun bonus de dégâts sur les tirs à la tête. Peu d\'intérêt à utiliser les mods de coups critique .\r\nTemps de rechargement long.\r\nFaible Cadence de Tir. '),
(31, 'Boltor', 'Le Boltor tire des carreaux lents et lourds capables d\'empaler les ennemis sur les murs.', 'Le Boltor est une arme d\'assaut Tenno lourde, envoyant une nuée de carreaux puissants.', 'Le schéma du Boltor est achetable dans le marché.', '../assets/img/production/production_Boltor.png', '../assets/img/stats/stats_Boltor.png', NULL, NULL, 2, '../assets/img/picture/picture_Boltor.png', '    Bonne cadence de tir.\r\n    Ignore l\'Armure (inflige 100% des dommages sur des zones qui prennent normalement des dommages réduits).\r\n    Bonne précision.\r\n    Un emplacement de polarité D pratique pour les Mods Balles Cryogéniques, Marteau Pilon, etc.\r\n    Faible recul.\r\n    100% de chance d\'étourdir les Grineers.\r\n    Les Coureur Infestés n\'explosent pas lorsqu\'on les tue avec cette arme.\r\n    Bons dégâts de base.\r\n    Lors des mises à mort, les corps suivront le carreau qui les a tués, les épinglant aux murs. Semblable aux tirs des arcs, cela augmente les dégâts sans avoir besoin d\'un mod de Pénétration. ', ' Faibles chances de dégâts critiques.\r\nFaible vitesse des projectiles comparé aux autres armes.\r\nLes carreaux ont un temps de trajet, les rendant moins efficaces après la moyenne portée.\r\nLes carreaux ont un petit trajet en arc, réduisant la précision entre la moyenne et la longue portée.\r\nOptimisé pour la courte et moyenne portée.\r\nMauvaise économie de munitions.\r\nTemps de recharge assez long. '),
(32, 'Cernos', 'Évoquant le style des anciens arcs, l\'impact puissant du Cernos est parfait pour chasser les ennemis lourdement blindés.', 'Le Cernos est un arc de conception Tenno, dans la lignée des Soma, Vectis, Tigris et son cousin, le Paris. ', 'Le schéma du Cernos est achetable dans le marché.', '../assets/img/production/production_Cernos.png', '../assets/img/stats/stats_Cernos.png', NULL, NULL, 1, '../assets/img/picture/picture_Cernos.png', '    Temps de charge rapide.\r\n    Bons dégâts d\'Impact, efficace contre les Boucliers.\r\n    Bonnes chances de critique (jusqu\'à 87,5% avec Frappe Tendue).\r\n    Cause des dégâts aux ennemis derrières votre cible.\r\n    Possède une polarité V.\r\n    Silencieux.\r\n    Peut utiliser le Mods Coup de Foudre. ', '    A besoin d\'être chargé pour faire des bons dégâts.\r\n    Faibles dégâts de Perforation et Tranchant.\r\n    Ses dégâts d\'Impact sont réduis de 25% contre les sans-armure et les non-infestés.\r\n    La faible cadence de tir le rend mal adapté au combat de mêlée. '),
(33, 'Daikyu', 'Le Daikyu requiert beaucoup de force pour le bander, mais chaque flèche tirée voit sa puissance et sa portée améliorées.', 'Le Daikyu est un arc de conception Tenno adoptant le design du Kyudo japonnais. Il possède plus de dégâts de base, plus de chances de Statut et une vitesse des flèches augmentée, comparé au autres arcs. Cependant, il souffre de faibles chances de Coup Critique et d\'une longue période de charge.', 'Le schéma du Daikyu est obtenable dans le laboratoire Tenno.', '../assets/img/production/production_Daikyu.png', '../assets/img/stats/stats_Daikyu.png', NULL, NULL, 1, '../assets/img/picture/picture_Daikyu.png', 'Plus hauts dégâts de base de tous les arcs.\r\nLa trajectoire de la flèche ne forme pas un arc.\r\nPossède une polarité V.\r\nLes flèches tirées par le Daikyu sont les plus rapide de tous les arcs.\r\nPossède une Perforation innée de 1.0 mètre.\r\nSilencieux.\r\nPeut s\'équiper du mod exclusif pour arcs Coup de Foudre.\r\nBon niveau de zoom. ', '    Très faible vitesse de charge, à peu près le double des autres arcs réguliers.\r\n    Nécessite d\'être chargé à fond pour tirer, ralentissant la vitesse d\'attaque.\r\n    La charge ne peut être maintenue pendant seulement 5s. Après ce délai, la flèche sera automatiquement rengainée.\r\n    Plus faibles chances de Coup Critique de tous les arcs.\r\n    Inflige des procs de recul invisibles similaire à des procs d\'Impact. Peut gêner pour la visée. '),
(34, 'Vectis', 'Un fusil de sniper Tenno classique, le Vectis est idéal pour les attaques à distance.', 'Le Vectis est un puissant fusil de sniper avec des sensations de mécanisme à verrou. Grâce à un zoom légèrement réduit par rapport aux autres fusils de sniper, il est beaucoup mieux adapté pour le combat à moyenne portée.', 'Le schéma du Vectis est achetable dans le marché.', '../assets/img/production/production_Vectis.png', '../assets/img/stats/stats_Vectis.png', NULL, NULL, 2, '../assets/img/picture/picture_Vectis.png', ' Forts dégâts de Perforation et d\'Impact – efficace contre l\'armure et les boucliers.\r\nForte Chance de Coup Critique.\r\nEx aequo avec le Vectis Prime pour la seconde plus haute Chance de Statut de tout les fusils de sniper, derrière le Komorex.\r\nDeuxième rechargement le plus rapide des fusils de sniper, derrière le Vectis Prime.\r\nBonne Économie de Munitions.\r\nPrécision parfaite en mode visé.\r\nPénétration innée de 1 mètre. ', ' Subit un dégradation linéaire des dégâts allant de 100% jusqu\'à 400m à 50% au delà des 600m (les distances sont affectées par la Vitesse des Projectiles).\r\nLe chargeur ne contient qu\'une seule balle: il faut recharger après chaque tir.\r\nFort Recul.\r\nUtilise des munitions de sniper, qui sont plus rare.\r\nTrès mauvaise Précision sans viser. ');

-- --------------------------------------------------------

--
-- Structure de la table `m3s4pl0v3_itemsparts`
--

DROP TABLE IF EXISTS `m3s4pl0v3_itemsparts`;
CREATE TABLE IF NOT EXISTS `m3s4pl0v3_itemsparts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `id_m3s4pL0v3_items` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `m3s4pL0v3_itemsParts_m3s4pL0v3_items0_FK` (`id_m3s4pL0v3_items`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `m3s4pl0v3_roles`
--

DROP TABLE IF EXISTS `m3s4pl0v3_roles`;
CREATE TABLE IF NOT EXISTS `m3s4pl0v3_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `m3s4pl0v3_roles`
--

INSERT INTO `m3s4pl0v3_roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `m3s4pl0v3_saleannouncement`
--

DROP TABLE IF EXISTS `m3s4pl0v3_saleannouncement`;
CREATE TABLE IF NOT EXISTS `m3s4pl0v3_saleannouncement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `postDate` date NOT NULL,
  `id_m3s4pL0v3_users` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `m3s4pL0v3_saleAnnouncement_m3s4pL0v3_users0_FK` (`id_m3s4pL0v3_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `m3s4pl0v3_searchplayers`
--

DROP TABLE IF EXISTS `m3s4pl0v3_searchplayers`;
CREATE TABLE IF NOT EXISTS `m3s4pl0v3_searchplayers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `postDate` date NOT NULL,
  `id_m3s4pL0v3_users` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `m3s4pL0v3_searchPlayers_m3s4pL0v3_users0_FK` (`id_m3s4pL0v3_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `m3s4pl0v3_subcategories`
--

DROP TABLE IF EXISTS `m3s4pl0v3_subcategories`;
CREATE TABLE IF NOT EXISTS `m3s4pl0v3_subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `id_m3s4pL0v3_categories` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `m3s4pL0v3_subCategories_m3s4pL0v3_categories0_FK` (`id_m3s4pL0v3_categories`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `m3s4pl0v3_subcategories`
--

INSERT INTO `m3s4pl0v3_subcategories` (`id`, `name`, `id_m3s4pL0v3_categories`) VALUES
(1, 'Arc', 2),
(2, 'Fusil', 2),
(3, 'Fusil à pompe', 2),
(4, 'Simple', 3),
(5, 'Doubles', 3),
(6, 'Armes de jet', 3),
(7, 'Simple', 4),
(8, 'Doubles', 4),
(9, 'Armes Lourdes', 4),
(10, 'Warframe', 1);

-- --------------------------------------------------------

--
-- Structure de la table `m3s4pl0v3_users`
--

DROP TABLE IF EXISTS `m3s4pl0v3_users`;
CREATE TABLE IF NOT EXISTS `m3s4pl0v3_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `id_m3s4pL0v3_roles` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `m3s4pL0v3_users_m3s4pL0v3_roles0_FK` (`id_m3s4pL0v3_roles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userswanttalk`
--

DROP TABLE IF EXISTS `userswanttalk`;
CREATE TABLE IF NOT EXISTS `userswanttalk` (
  `id` int(11) NOT NULL,
  `id_m3s4pL0v3_users` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_m3s4pL0v3_users`),
  KEY `usersWantTalk_m3s4pL0v3_users1_FK` (`id_m3s4pL0v3_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `announcementneedsparts`
--
ALTER TABLE `announcementneedsparts`
  ADD CONSTRAINT `announcementNeedsParts_m3s4pL0v3_itemsParts0_FK` FOREIGN KEY (`id`) REFERENCES `m3s4pl0v3_itemsparts` (`id`),
  ADD CONSTRAINT `announcementNeedsParts_m3s4pL0v3_saleAnnouncement1_FK` FOREIGN KEY (`id_m3s4pL0v3_saleAnnouncement`) REFERENCES `m3s4pl0v3_saleannouncement` (`id`);

--
-- Contraintes pour la table `m3s4pl0v3_forum`
--
ALTER TABLE `m3s4pl0v3_forum`
  ADD CONSTRAINT `m3s4pL0v3_forum_m3s4pL0v3_forum0_FK` FOREIGN KEY (`id_m3s4pL0v3_forum`) REFERENCES `m3s4pl0v3_forum` (`id`);

--
-- Contraintes pour la table `m3s4pl0v3_items`
--
ALTER TABLE `m3s4pl0v3_items`
  ADD CONSTRAINT `m3s4pL0v3_items_m3s4pL0v3_subCategories0_FK` FOREIGN KEY (`id_m3s4pL0v3_subCategories`) REFERENCES `m3s4pl0v3_subcategories` (`id`);

--
-- Contraintes pour la table `m3s4pl0v3_itemsparts`
--
ALTER TABLE `m3s4pl0v3_itemsparts`
  ADD CONSTRAINT `m3s4pL0v3_itemsParts_m3s4pL0v3_items0_FK` FOREIGN KEY (`id_m3s4pL0v3_items`) REFERENCES `m3s4pl0v3_items` (`id`);

--
-- Contraintes pour la table `m3s4pl0v3_saleannouncement`
--
ALTER TABLE `m3s4pl0v3_saleannouncement`
  ADD CONSTRAINT `m3s4pL0v3_saleAnnouncement_m3s4pL0v3_users0_FK` FOREIGN KEY (`id_m3s4pL0v3_users`) REFERENCES `m3s4pl0v3_users` (`id`);

--
-- Contraintes pour la table `m3s4pl0v3_searchplayers`
--
ALTER TABLE `m3s4pl0v3_searchplayers`
  ADD CONSTRAINT `m3s4pL0v3_searchPlayers_m3s4pL0v3_users0_FK` FOREIGN KEY (`id_m3s4pL0v3_users`) REFERENCES `m3s4pl0v3_users` (`id`);

--
-- Contraintes pour la table `m3s4pl0v3_subcategories`
--
ALTER TABLE `m3s4pl0v3_subcategories`
  ADD CONSTRAINT `m3s4pL0v3_subCategories_m3s4pL0v3_categories0_FK` FOREIGN KEY (`id_m3s4pL0v3_categories`) REFERENCES `m3s4pl0v3_categories` (`id`);

--
-- Contraintes pour la table `m3s4pl0v3_users`
--
ALTER TABLE `m3s4pl0v3_users`
  ADD CONSTRAINT `m3s4pL0v3_users_m3s4pL0v3_roles0_FK` FOREIGN KEY (`id_m3s4pL0v3_roles`) REFERENCES `m3s4pl0v3_roles` (`id`);

--
-- Contraintes pour la table `userswanttalk`
--
ALTER TABLE `userswanttalk`
  ADD CONSTRAINT `usersWantTalk_m3s4pL0v3_forum0_FK` FOREIGN KEY (`id`) REFERENCES `m3s4pl0v3_forum` (`id`),
  ADD CONSTRAINT `usersWantTalk_m3s4pL0v3_users1_FK` FOREIGN KEY (`id_m3s4pL0v3_users`) REFERENCES `m3s4pl0v3_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
