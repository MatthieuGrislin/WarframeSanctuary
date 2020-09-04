-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 03 sep. 2020 à 11:38
-- Version du serveur :  8.0.21-0ubuntu0.20.04.4
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `WarframeSanctuary`
--

-- --------------------------------------------------------

--
-- Structure de la table `announcementneedsparts`
--

CREATE TABLE `announcementneedsparts` (
  `id` int NOT NULL,
  `id_m3s4L0v3_saleAnnouncement` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `m3s4L0v3_categories`
--

CREATE TABLE `m3s4L0v3_categories` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `m3s4L0v3_categories`
--

INSERT INTO `m3s4L0v3_categories` (`id`, `name`) VALUES
(1, 'Warframes'),
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
-- Structure de la table `m3s4L0v3_faq`
--

CREATE TABLE `m3s4L0v3_faq` (
  `id` int NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `m3s4L0v3_faq`
--

INSERT INTO `m3s4L0v3_faq` (`id`, `question`, `answer`) VALUES
(1, 'Qu\'est-ce le Platinum?', 'Les crédits Platinum sont la devise du jeu Warframe, utilisée pour acheter de nombreuses améliorations, comprenant par exemple des upgrades, boosts, armes et Warframes. Bien que tous les joueurs ont la possibilité d\'acheter des crédits Platinum, l\'Accès Prime permet de les obtenir à un prix nettement plus bas.\r\n'),
(2, 'Ai-je besoin d\'acheter du Platinum pour m\'amuser? ', 'Alors que l\'achat Platinum peut vous donner accès à des armes, Warframes et d\'autres éléments du jeu plus rapidement, presque tout le contenu de Warframe peut être obtenu gratuitement. Nous espérons que vous trouverez le jeu assez divertissant pour soutenir nos efforts de développement en effectuant des achats.'),
(3, 'Puis-je échanger du Platinum?', 'En plus de vous permettre d\'acheter des produits de notre boutique en jeu, le Platinum peut également être échangé aux autres joueurs, habituellement en échange de Mods rares ou d\'autres objets qui ne peuvent pas être achetés. Alors que nous vous encourageons le commerce avec les autres joueurs, soyez conscient des CLUF ainsi que des Conditions d\'utilisation. La re-vente du Platinum par l\'échange est strictement interdite et peut résulter en la suspension permanente de votre compte.'),
(4, 'Qu\'est-ce l\'Accès Prime?', 'L\'Accès Prime est un programme tournant qui inclut les dernières Warframes Prime et Équipement Prime avec du Platinum à rabais ainsi que d’autres objets exclusifs. L\'Accès Prime offre un accès immédiat aux dernières Warframes Prime et Équipement Prime sans avoir à attendre le temps de fabrication.'),
(5, 'Où puis-je obtenir une copie de Warframe?\r\n', 'Warframe pour PC peut être téléchargés directement à partir de notre site Web, sous l\'onglet Jeu au haut de la page. Vous n\'avez qu\'à créer un compte et vous êtes prêt à jouer ! Pour une explication détaillée des bases de Warframe (y compris les touches pour un clavier ou contrôleur) n\'oubliez pas de visiter notre Guide de démarrage rapide ou bien consultez les forums pour en savoir plus sur notre merveilleuse communauté de ninjas de l\'espace.\r\n\r\nJouer Warframe sur PS4™ et Xbox One est tout aussi facile - télécharger simplement le jeu gratuitement en visitant le Marché PSN ou Xbox respectivement. Vous aurez toujours besoin de créer un compte, mais après ça vous n\'avez qu\'à vous connecter et commencer à jouer !'),
(6, 'Quelle est la configuration système nécessaire pour Warframe?', 'Les spécifications minimums pour Warframe comprennent:\r\n\r\nSystème d’exploitation : Windows 7 64-Bit (32-bit non supporté)\r\nProcesseur: Intel Core 2 Duo e6400 ou AMD Athlon x64 4000+ (~2.2Ghz UC double cœur)\r\nVidéo: Cartes graphiques DirectX 10+\r\nMémoire: 4 Go de RAM\r\nDisque dur: 30 Go disponibles\r\nInternet: Connexion à haute vitesse\r\n\r\nNote: nous n\'avons pas de version Mac ou Linux disponibles pour l\'instant.'),
(7, 'Puis-je participer dans les concours Steam ou bien recevoir des cadeaux même si je n\'ai pas Steam? ', 'L\'accès aux aspects de Warframe uniques, les packs de Platinum et les concours Steam vous oblige à voir un compte Steam pour être admissible. Toutes pièces uniques que vous acquérez sur une plateforme unique ne sont pas transférables à une autre plateforme, y compris; Steam, PS4, Xbox One, GamerFirst, etc.'),
(8, 'Où puis-je placer des rapports de bug ou des problèmes avec mon compte?', 'Vos questions et préoccupations liés à un problème du jeu devraient être postées dans nos forums officielles. Tous bugs associés a la version PC, PS4 ou Xbox One du jeu doivent tous être signalés dans leur sous-forum pertinent. Nous encourageons les joueurs à visiter le sous-forum de Note de Mise à Jour afin de suivre les dernières mises à jour et les correctifs du jeu. Si vous rencontrez un problème avec votre compte (ex: Achat de Platinum, des éléments manquants, etc. ) Veuillez placer une demande de support avec notre équipe de Soutien Warframe afin que nous puissions vous aider.'),
(9, 'J\'ai des problèmes de connexion, aidez-moi ! ', 'Si vous rencontrez de la difficulté à vous connecter à Warframe ou vous recontrez des problèmes de connectivité dans le jeu, vous pouvez vérifier vos paramètres NAT. NAT Strict peur causer quelques problèmes avec les jeux en ligne, et vous pouvez consulter notre guide UPnP pour plus d\'informations.');

-- --------------------------------------------------------

--
-- Structure de la table `m3s4L0v3_items`
--

CREATE TABLE `m3s4L0v3_items` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `codex` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `acquisition` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `production` varchar(50) NOT NULL,
  `stats` varchar(50) NOT NULL,
  `precepts` varchar(50) DEFAULT NULL,
  `comparison` varchar(50) DEFAULT NULL,
  `id_m3s4L0v3_subCategories` int NOT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `avantages` text,
  `inconvenients` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `m3s4L0v3_items`
--

INSERT INTO `m3s4L0v3_items` (`id`, `name`, `codex`, `definition`, `acquisition`, `production`, `stats`, `precepts`, `comparison`, `id_m3s4L0v3_subCategories`, `picture`, `avantages`, `inconvenients`) VALUES
(1, 'Gauss', 'Ne cessez jamais de bouger. La batterie de Gauss est rechargée par le mouvement, alimentant ainsi ses capacités cinétiques dévastatrices. Ils ne peuvent pas tuer ce qu\'ils ne peuvent pas toucher.', 'Les moteurs sont prêts pour l\'allumage. Systèmes de circulation de liquide de refroidissement en ligne. Tourné dans l\'overdrive cinétique, le speedster Gauss laisse sa concurrence au milieu de la poussière. Accélérez et courez à travers de vastes paysages ou mers. Rechargez le pouvoir des frappes hostiles et réduisez la force de leur impact. Gauss a démarré dans la Update 25.7 : Conquérant d\'Altra. ', 'Les composants de Gauss s\'obtiennent dans le mod de jeu Perturbation (Rotation C) sur Kelpie, Sedna. Chaque composant possède 10% de chance d\'être obtenu.', '../assets/img/production/production_Gauss.png', '../assets/img/stats/stats_Gauss.png', NULL, NULL, 10, '../assets/img/picture/picture_Gauss.png', '', ''),
(2, 'Mesa', 'Pourvue d\'une main sûre et de réflexes aiguisés, Mesa est une tireuse hors-paire.', 'Mesa est une Warframe basée sur le combat à distance. Ses capacités lui permettent d\'abattre toutes les cibles qui se présentent et même de renforcer son armement ainsi que celui de ses alliés, tout en neutralisant les armes à feu ennemies.', 'Pour obtenir les composants de Mesa il faut vaincre Alad V Mutaliste sur Eris.', '../assets/img/production/production_Mesa.png', '../assets/img/stats/stats_Mesa.png', NULL, NULL, 10, '../assets/img/picture/picture_Mesa.png', '', ''),
(3, 'Excalibur', 'Ils avaient gagné. Ils avaient retourné nos armes et notre technologie contre nous. Plus nous avancions, plus importantes étaient nos pertes. La guerre était perdue à moins que nous trouvions une solution. Dans le désespoir nous avons cherché dans le Néant. Le noir absolu, les ténèbres de l\'espace qui dépassent notre science et notre entendement.\r\n\r\nNous avons pris les quelques déséquilibrés revenus de cet endroit. Nous les avons entourés d\'une armure, un catalyseur pour leur affliction. nous leur avons donné des armes des temps anciens. Fusils et lames. Un nouveau guerrier, un nouveau code était né. Ces rejets, ces Tennos, allaient devenir nos sauveurs. Une caste de Dieux Guerriers de métal qui frapperaient avec fureur nos ennemis d\'une façon qu\'ils ne pourraient jamais comprendre.\r\n\r\nExcalibur fut le premier. ', 'Excalibur est une Warframe dont le thème est l\'épée. En brandissant n\'importe quelle lame, Excalibur découpe ses ennemis. Elle est l\'une des trois Warframes de départ. ', 'Les schémas de ses composants peuvent être obtenus sur le Capitaine Vor et le Lieutenant Lech Kril, sur la mission Assassinat du secteur War, Mars.', '../assets/img/production/production_Excalibur.png', '../assets/img/stats/stats_Excalibur.png', NULL, NULL, 10, '../assets/img/picture/picture_Excalibur.png', '', ''),
(4, 'Nekros', 'Nekros utilises ses sombres pouvoirs pour manipuler ses ennemis, vivants comme morts.', 'Nekros est une Warframe basée sur la manipulation de la mort sortie à l\'Update 10. Il excelle dans le rôle de support.', 'Les composants de Nekros peuvent être obtenus sur Lephantis, dans les Épaves Orokin, en utilisant une Clé Epave Assassinat. ', '../assets/img/production/production_Nekros.png', '../assets/img/stats/stats_Nekros.png', NULL, NULL, 10, '../assets/img/picture/picture_Nekros.png', '', ''),
(5, 'Chroma', 'Un véritable maître des éléments, Chroma est capable de changer l\'élément de ses dégâts en changeant la couleur de son énergie.', 'La représentation bestiale des forces élémentaires de la nature, Chroma ChromaIcon272 déconcerte ses ennemis et renforce ses alliés grâce à ses caprices élémentaires.', 'Le Schéma principal de Chroma s\'obtient en récompense de la quête La Nouvelle Etrange. Ceux des composants s\'obtiennent ensuite en complétant différentes Jonctions:</p>\r\n\r\n<ul>\r\n    <li>Schéma Neuroptiques – jonction Uranus</li>\r\n    <li>Schéma Châssis – jonction Neptune</li>\r\n    <li>Schéma Système – jonction Pluton</li>\r\n</ul> \r\n\r\n<p>Il est également possible d\'acheter des examplaires supplémentaires chez le Céphalon Simaris.', '../assets/img/production/production_Chroma.png', '../assets/img/stats/stats_Chroma.png', NULL, NULL, 10, '../assets/img/picture/picture_Chroma.png', NULL, NULL),
(6, 'Nova', 'Nova utilise l\'énergie électromagnétique pour contenir et contrôler de l\'antimatière hautement volatile qui lui fournit ses pouvoirs.', 'Nova est une Warframe basée sur l\'antimatière. Elle est un peu fragile, avec une faible capacité de bouclier, une vie moyenne et aucune capacité de défense. En revanche, elle possède des capacités extrêmement offensives capable de détruire une vague entière d\'ennemis.', 'Les schémas de Nova sont obtenus en éliminant le Raptor, sur le secteur de Naamah, Europe.', '../assets/img/production/production_Nova.png', '../assets/img/stats/stats_Nova.png', NULL, NULL, 10, '../assets/img/picture/picture_Nova.png', NULL, NULL),
(7, 'Nyx', 'Son contrôle de l\'esprit et ses attaques psychiques font de Nyx une adversaire redoutable. Malgré sa relative fragilité, elle pourra s\'insinuer dans l\'esprit et modifier le comportement des ennemis, renversant ainsi le cours du combat.', 'Nyx est une Warframe orientée sur le psychisme et le contrôle mental. Elle a été introduite dans la mise à jour 6. Elle s\'avère être une très bonne alliée grâce à sa capacité à perturber les troupes ennemies ou à les rallier à la cause des Tennos.', 'Les composants du schéma peuvent être obtenu sur le boss Phorid en alerte invasion Infestés.', '../assets/img/production/production_Nyx.png', '../assets/img/stats/stats_Nyx.png', NULL, NULL, 10, '../assets/img/picture/picture_Nyx.png', NULL, NULL),
(8, 'Rhino', 'Rhino est la Warframe la plus lourde, combinant des capacités offensives et défensives.', 'Rhino est la plus imposante de toutes les Warframes. Sa force lui permet de combiner des attaques offensives dévastatrices avec un grand pouvoir de défense. Tank du champ de bataille, la Warframe Rhino est spécialisée dans la tactique de la force brute, comme frapper ses adversaires avec ses pouvoirs, et faire trembler le sol pour faire voler ses ennemis et les rendre vulnérables aux attaques de mêlée. Il peut aussi se rendre invincible au cœur du combat, attirer l\'attention des ennemis et les détruire.', 'Les composants de Rhino peuvent être obtenus sur le Jackal (Fossa, Vénus).', '../assets/img/production/production_Rhino.png', '../assets/img/stats/stats_Rhino.png', NULL, NULL, 10, '../assets/img/picture/picture_Rhino.png', NULL, NULL),
(9, 'Amprex', 'L\'Amprex envoie un rayon continu d’électricité à haut voltage qui est capable d\'arquer vers les ennemis à proximité. Cette arme est excellente pour le contrôle des foules.', 'L\'Amprex peut facilement détruire un large groupe d\'ennemis en tirant plusieurs arcs électriques qui peuvent s\'enchaîner entre les unités. Son fonctionnement est similaire au Synapse, qui distribue plus de dégâts mais est limité à une seule cible.', 'L\'Amprex est achetable dans le laboratoire d\'Énergie dans le Dojo après avoir recherché le Dera ou dans le marché pour 225 Platinum.', '../assets/img/production/production_Amprex.png', '../assets/img/stats/stats_Amprex.png', NULL, NULL, 2, '../assets/img/picture/picture_Amprex.png', '<ul>   \r\n <li>Cadence de tir élevée.\r\n   <li>Spécialisé dans les dommages Électrique Electrique, cela le rend très efficace contre les robots et les machines.</li>\r\n       <li>En utilisant des mods élémentaires, il est facile d\'obtenir des effets Magnétique</li> Magnetic w, Corrosif Corrosive w ou de Radiation Radiation w. </li>\r\n   <li> Crée des arcs électriques entre les ennemis.</li>\r\n   <li> Les tirs multiples frappent les ennemis dans toutes les directions.</li>\r\n   <li> De toute les armes à rayon continu, il dispose du deuxième plus haut taux de chance de critique, derrière le Synapse.</li>\r\n    <li>Très bonne chances de Statut.</li>\r\n</ul>', '<ul>\r\n<li>Dégâts de base assez faibles.</li>\r\n<li>Consommation de munitions élevée - dépense des munitions très rapidement.</li>\r\n<li>Portée initiale limitée de 18 mètres (modable).</li>\r\n\r\n    <li>Les arcs électriques ont une portée de 10m (non modable). </li>\r\n\r\n<li>Pas de dégâts Tranchant, de Perforation , ni d\'Impact.</li>\r\n<li>Pas de polarité.</li>\r\n<li>Les dégats du rayon commence à 20% de la valeur totale et se charge graduellement à mesure que le tir est maintenu, jusqu\'à atteindre 100% de ses dégats en 0.6 seconde. Si le tir n\'est pas maintenu, la charge sera perdu au bout de 0.8 seconde.</li>\r\n</ul>'),
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
(34, 'Vectis', 'Un fusil de sniper Tenno classique, le Vectis est idéal pour les attaques à distance.', 'Le Vectis est un puissant fusil de sniper avec des sensations de mécanisme à verrou. Grâce à un zoom légèrement réduit par rapport aux autres fusils de sniper, il est beaucoup mieux adapté pour le combat à moyenne portée.', 'Le schéma du Vectis est achetable dans le marché.', '../assets/img/production/production_Vectis.png', '../assets/img/stats/stats_Vectis.png', NULL, NULL, 2, '../assets/img/picture/picture_Vectis.png', ' Forts dégâts de Perforation et d\'Impact – efficace contre l\'armure et les boucliers.\r\nForte Chance de Coup Critique.\r\nEx aequo avec le Vectis Prime pour la seconde plus haute Chance de Statut de tout les fusils de sniper, derrière le Komorex.\r\nDeuxième rechargement le plus rapide des fusils de sniper, derrière le Vectis Prime.\r\nBonne Économie de Munitions.\r\nPrécision parfaite en mode visé.\r\nPénétration innée de 1 mètre. ', ' Subit un dégradation linéaire des dégâts allant de 100% jusqu\'à 400m à 50% au delà des 600m (les distances sont affectées par la Vitesse des Projectiles).\r\nLe chargeur ne contient qu\'une seule balle: il faut recharger après chaque tir.\r\nFort Recul.\r\nUtilise des munitions de sniper, qui sont plus rare.\r\nTrès mauvaise Précision sans viser. '),
(35, 'Carrier', 'Avec «Percuteur» et «Aspirateur» comme préceptes de bases, Carrier est une sentinelle de recherche. Carrier est aussi livrée avec un fusil à pompe.', 'Le Carrier est une Sentinelle utilitaire avec comme capacité le ramassage des objets proches pour son maître et son fusil à pompe unique le Sweeper possédant une forte puissance de feu, si ce n\'est la plus forte de toutes les armes de Sentinelles (sans compter sa version Prime). Différemment des autres Sentinelles, le Carrier possède une polarité D supplémentaire.', 'Le schéma de Carrier est achetable au marché pour 100 000 Crédits.', '../assets/img/production/production_Carrier.png', '../assets/img/stats/stats_Carrier.png', NULL, NULL, 11, '../assets/img/picture/picture_Carrier.png', NULL, NULL),
(36, 'Kavat Smeeta', 'Ce malicieux félin est joueur mais sournois.', 'Un des meilleurs compagnons du jeu. Les boosts permettent d\'augmenter vos chances de critique, de doubler votre affinité ou bien vos ressources.', 'Le Kavat Smeeta s\'obtient en scannant des Kavat dans les épaves orokin. ', '../assets/img/production/production_Smeeta.png', '../assets/img/stats/stats_Smeeta.png', NULL, NULL, 12, '../assets/img/picture/picture_Smeeta.png', NULL, NULL),
(37, 'Itzal', 'Conçue pour des attaques rapides et discrètes, l\'Archwing Itzal excelle pour atteindre ses ennemis depuis les profondeurs de l\'espace.', 'L\'Itzal est une Archwing furtive de soutient, utilisant des technologies permettant de devenir invisible aux yeux des ennemis tout en utilisant de puissantes attaques disruptives.', 'Le Schéma ainsi que ses composants sont achetable dans un Dojo. ', '../assets/img/production/production_Itzal.png', '../assets/img/stats/stats_Itzal.png', NULL, NULL, 14, '../assets/img/picture/picture_Itzal.png', NULL, NULL),
(39, 'Rathbone', 'Utilisant la propulsion du système Archwing, ce marteau massif écrase tout sur son passage.', 'Un marteau lourd exclusif aux Archwings, le Rathbone inflige principalement des dégâts d\'Impact, ce qui est idéal pour éliminer les Boucliers Corpus. Cette arme partage ses six combos de base avec le Centaur. ', 'Les parties du Rathbone s\'obtiennent dans les syndicats.', '../assets/img/production/production_Rathbone.png', '../assets/img/stats/stats_Rathbone.png', NULL, NULL, 19, '../assets/img/picture/picture_Rathbone.png', NULL, NULL),
(40, 'Neurodes', 'Des capteurs organiques biotech récoltés sur les entités infestées. ', NULL, 'Les Neurodes sont un composant rare qui peut être trouvé sur Terre, Eris, Lua ou encore dans les Épaves Orokin.', '../assets/img/production/production_Neurodes.png', '../assets/img/stats/stats_Neurodes.png', NULL, NULL, 17, '../assets/img/picture/picture_Neurodes.png', NULL, NULL),
(41, 'Sweeper', 'Arme de base de la sentinelle Carrier. Tire des plombs de fusil à pompe.', 'Le Sweeper est l\'arme par défaut de la sentinelle Carrier. Elle fonctionne comme un fusil à pompe à courte portée. A cause de sa nature de fusil à pompe, le mod précepte Percuteur est fait pour tirer à bout portant. Cette arme accepte les mods des fusils à pompe.', 'Le Sweeper s\'obtient en fabriquant Carrier.', 'Déja construit à la récupération.', '../assets/img/stats/stats_Sweeper.png', NULL, NULL, 13, '../assets/img/picture/picture_Sweeper.png', NULL, NULL),
(42, 'Dethcube', 'Avec «Mort brusque» et «Vaporisation» en tant que préceptes de base, le Dethcube ne ment pas, c\'est bien un «messager de la mort». Il est livré avec son arme, le Fusil Machine de Mort.', 'Le Dethcube est une sentinelle offensive équipée du Fusil Machine de Mort, capacble d\'infliger des hauts dégâts par secondes aux ennemis à grande distance.\r\n\r\nLe Dethcube peut constamment dresser un mur de balles sur un ennemi, et couplé avec un étourdissement ou des mods élémentaires, il peut constamment étourdir les ennemis. Le mod Vaporisation inflige de très gros dégâts à un ennemi qui s\'approcherais trop du joueur, l\'étourdissant s\'il ne meurt pas sur le coup, les boss y compris. ', 'Le schéma de Dethcube s\'obtient dans le marché pour 100 000 Crédits.', '../assets/img/production/production_Dethcube.png', '../assets/img/stats/stats_Dethcube.png', NULL, NULL, 11, '../assets/img/picture/picture_Dethcube.png', NULL, NULL),
(43, 'Oxylus', 'Oxylus est une Sentinelle de support équipée d\'un Multron, ainsi que deux Mods Préceptes, Détecteur Formes de Vie Aquatiques et Scanner Matière pour l’aide à la Pêche et la détection des Conteneurs de Ressources.', 'L\'Oxylus est une sentinelle apparu lors de l\'update Fortuna.', 'Le schéma de l\'Oxylus s\'obtient chez un marchant dans la cité de Fortuna.', '../assets/img/production/production_Oxylus.png', '../assets/img/stats/stats_Oxylus.png', NULL, NULL, 11, '../assets/img/picture/picture_Oxylus.png', NULL, NULL),
(44, 'Multron', 'Tire une rafale de balles perforantes.', 'Le Multron est l\'arme par défaut de la Sentinelle Oxylus. Cette arme utilise les mods pour fusils. ', 'L\'arme de Sentinelle est automatiquement reçu en acquérant Oxylus. A noter que cette arme occupera un emplacement de l\'inventaire robotique.', 'L\'arme s\'obtient déja construite.', '../assets/img/stats/stats_Multron.png', NULL, NULL, 13, '../assets/img/picture/picture_Multron.png', NULL, NULL),
(45, 'Fusil laser', 'Un fusil laser développé par un rétro-ingénierie de la technologie Corpus.', 'Le Fusil Laser est l\'arme par défaut de la sentinelle Wyrm. Il s\'agit essentiellement d\'une version sentinelle du Dera. Cette arme accepter les mods de fusils.', 'Cette arme de sentinelle est automatiquement obtenue en fabriquant Wyrm. Il est à noter que cette arme prend également un emplacement de sentinelle. ', 'L\'arme s\'obtient déja construite.', '../assets/img/stats/stats_FusilLaser.png', NULL, NULL, 13, '../assets/img/picture/picture_FusilLaser.png', NULL, NULL),
(46, 'Wyrm', 'Avec «Guerrier» et «Dispersion des foules» comme préceptes de base, Wyrm est une sentinelle très offensive. Wyrm possède un fusil laser.', 'Wyrm est une Sentinelle offensive équipée du Fusil Laser comme arme par défaut.\r\n\r\nLa Dispersion des foules de Wyrm peut repousser plusieurs ennemis, alors que la Vaporisation du Dethcube ne peut en étourdir qu\'un seul. Dispersion des foules est plus similaire à Fantôme de Shade car ce mod empêche les ennemis d\'attaquer le maître de la Sentinelle mais pour un temps beaucoup plus court.\r\n\r\nEn résumé, Wyrm peut être considérée comme un compromis entre l\'offensif Dethcube et le défensif Shade. ', 'Le schéma de Wyrm est achetable dans le marché pour 100 000 Crédits.', '../assets/img/production/production_Wyrm.png', '../assets/img/stats/stats_Wyrm.png', NULL, NULL, 11, '../assets/img/picture/picture_Wyrm.png', NULL, NULL),
(47, 'Artax', 'Gelez les cibles avec un faisceau de glace.', 'L\'Artax est l\'arme par défaut de la Sentinelle Taxon, qui tire un rayon qui inflige des dégâts de Glace tout en infligeant des procs aux ennemis. Cette arme accepte les mods de fusil. ', 'Cette arme de sentinelle s\'ajoute automatiquement à l\'obtention de Taxon. Notez que cette arme utilise un emplacement de sentinelle. ', 'L\'Artax s\'obtient déja construit.', '../assets/img/stats/stats_Artax.png', NULL, NULL, 13, '../assets/img/picture/picture_Artax.png', NULL, NULL),
(48, 'Kavat Vasca', 'Une véritable créature de la nuit, assoiffé de vie.', 'Lorsque vous êtes dans les Plaines d\'Eidolon pendant le cycle de nuit, les Kavats Vasca Sauvages se trouvent généralement dans une meute de 3 à 6. Si vous rencontrez l’une de ces meutes et que vous avez un Kavat équipé, les Kavats Vasca Sauvages attaqueront et infecteront votre Kavat avec un Virus. Le signe d\'infection est marqué par une aura rougeâtre sur votre Kavat.', 'Le Kavat Vasca est obtenu en utilisant des Modèle de Code Génétique sur le Kavat infecté.', 'Pas de production', '../assets/img/stats/stats_Vasca.png', NULL, NULL, 12, '../assets/img/picture/picture_Vasca.png', NULL, NULL),
(49, 'Kavat Adarza', 'Ses yeux perçants reflètent ses instincts meurtriers.', 'Le Kavat Adarza vous donnera 1 boost amplifiant vos chances de coup critique de 60%.', 'Pour obtenir le Kavat Adarza, il vous faudra scanner des Kavats dans les épaves orokin.', 'Pas de production', '../assets/img/stats/stats_Adarza.png', NULL, NULL, 12, '../assets/img/picture/picture_Adarza.png', NULL, NULL),
(50, 'Kubrow Chesa', 'Ce Kubrow désarmera les adversaires et récupérera les butins de guerre.', NULL, NULL, 'Pas de production', '../assets/img/stats/stats_Chesa.png', NULL, NULL, 12, '../assets/img/picture/picture_Chesa.png', NULL, NULL),
(51, 'Kubrow Huras', 'Prisé pour sa capacité à se faufiler sur les proies sans méfiance, le Kubrow Huras a d\'abord été utilisé comme compagnon de chasse par l\'élite Orokin. Il est maintenant adapté pour une utilisation lors de missions secrètes et des assassinats.', NULL, NULL, 'Pas de production', '../assets/img/stats/stats_Huras.png', NULL, NULL, 12, '../assets/img/picture/picture_Huras.png', NULL, NULL),
(52, 'Kubrow Raksa', 'Conçu par les Orokin pour être le compagnon parfait, un Kubrow n\'était jamais loin de son maître. Loyal et obéissant, ces créatures sont faites pour être un garde du corps idéal. Equipés de générateurs de bouclier pour une protection supplémentaire, leur grondement féroce paralyse tout agresseur de peur.', NULL, NULL, 'Pas de production', '../assets/img/stats/stats_Raksa.png', NULL, NULL, 12, '../assets/img/picture/picture_Raksa.png', NULL, NULL),
(53, 'Kubrow Sahasa', 'D\'entreprenants concepteurs génétiques Orokin se sont rendus compte que l\'affinité des Kubrows pour les jeux de \"va chercher\" pouvait être employé de façon plus sérieuse. Ils développent bientôt une souche adepte pour la reconnaissance et la récupération d\'objets de contrebande. Les Tennos se servent souvent de ces créatures pour se réapprovisionner sur le terrain', NULL, NULL, 'Pas de production', '../assets/img/stats/stats_Sahasa.png', NULL, NULL, 12, '../assets/img/picture/picture_Sahasa.png', NULL, NULL),
(54, 'Kubrow Sunika', 'Une fois les animaux de garde des Orokin réalisés, il ne leur fallut pas longtemps pour que la garde Orokin commence à expérimenter des souches conçues pour le combat. Ce ne sont plus des animaux domestiques mais aussi des animaux de guerre élevés pour la férocité et l\'agressivité. Alad V prévoit de ​perturber le système de Jupiter grâce à leur prouesse au combat.', NULL, NULL, 'Pas de production', '../assets/img/stats/stats_Sunika.png', NULL, NULL, 12, '../assets/img/picture/picture_Sunika.png', NULL, NULL),
(55, 'Amesha', 'Transformez-vous en gardien ailé.', 'L\'Amesha est une Archwing de support, qui sacrifie la puissance offensive pour des capacités défensives de zone, qui peuvent renforcer et soigner les alliés ainsi qu\'affaiblir les ennemis. ', 'es schémas composants de l\'Amesha peuvent être acquis via la Recherche dans le Laboratoire Tenno dans un Dojo de Clan. ', '../assets/img/production/production_Amesha.png', '../assets/img/stats/stats_Amesha.png', NULL, NULL, 14, '../assets/img/picture/picture_Amesha.png', NULL, NULL),
(56, 'Elytron', 'Cette Archwing lourde a été construite dans un seul but, la destruction.', 'L\'Elytron est une Archwing qui se concentre uniquement sur l\'aspect offensif, bombardant aisément une zone avec des attaques explosives, capable d\'infliger d\'importants dégâts contre plusieurs ennemis grâce à une sélection de missiles.', 'Le Schéma de l\'Elytron peut être acheté dans le Marché une fois que le joueur a complété la Quête L\'Archwing. Le Schéma ainsi que ses composants sont achetables au Laboratoire Tenno d\'un Dojo, après avoir complété la Quète L\'Archwing. ', '../assets/img/production/production_Elytron.png', '../assets/img/stats/stats_Elytron.png', NULL, NULL, 14, '../assets/img/picture/picture_Elytron.png', NULL, NULL),
(57, 'Odonata', 'Les systèmes construit au cœur de cette Archwing allient des capacités offensives et des contre-mesures défensives.', 'L\'Odonata possède à la fois des capacités défensives, qui peuvent parer les attaques, et des capacités offensives, qui peuvent infliger des dégâts. ', 'L\'Odonata est la première Archwing qu\'un Tenno peut obtenir, en complétant la quête L\'Archwing sur Vénus.', '../assets/img/production/production_Odonata.png', '../assets/img/stats/stats_Odonata.png', NULL, NULL, 14, '../assets/img/picture/picture_Odonata.png', NULL, NULL),
(58, 'Odonata Prime', 'Cette version améliorée du premier prototype d\'Archwing débride ses capacités à leur summum théorique.', 'L\'Odonata Prime est la version Prime de l\'Archwing Odonata, disposant de meilleures caractéristiques.', 'Pour obtenir l\'Odonata Prime, il vous faudra récupérer les parties, le schéma général. Et ensuite vous devrez lancer la fabrication dans votre fonderie.', '../assets/img/production/production_OdonataP.png', '../assets/img/stats/stats_OdonataP.png', NULL, NULL, 14, '../assets/img/picture/picture_OdonataP.png', NULL, NULL),
(60, 'Onorix', 'Cette hache équipée de lames faites de lasers fend facilement les défenses des vaisseaux ainsi que les forces qui les protègent.', 'L\'Onorix est une hache lourde, conçue pour être utilisée avec le système de vol Archwing.', 'Les parties de l\'Onorix s\'obtiennent dans les syndicats.', '../assets/img/production/production_Onorix.png', '../assets/img/stats/stats_Onorix.png', NULL, NULL, 19, '../assets/img/picture/picture_Onorix.png', '    Vitesse d\'attaque plus rapide que le Veritux.\r\n    Possède une polarité en V. ', '    Faibles chances de critique.\r\n    Multiplicateur de critique extrêmement faible.\r\n    Dégâts de bases plus faibles que la Veritux. '),
(61, 'Centaur', 'Mi-bouclier, mi-épée, le Centaur est l\'arme d\'excellence pour plonger tête baissée dans les rangs ennemis.', 'Le Centaur est une arme de mêlée pour Archwing qui peut agir aussi comme bouclier. Il partage son combo basique de six coups avec le Rathbone, mais possède aussi son propre combo six coups quand il est utilisé en mêlée rapide.', 'Les parties du Centaur s\'obtiennent dans les syndicats.', '../assets/img/production/production_Centaur.png', '../assets/img/stats/stats_Centaur.png', NULL, NULL, 19, '../assets/img/picture/picture_Centaur.png', ' Possède le plus haut taux de critique de toutes les armes de mêlée Archwing.\r\nPas de délais entre les combos, autorisant une meilleure vitesse d\'attaque.\r\n\r\n    Possède un combo multi-coup. \r\n\r\nPossède de bonnes chances d\'infliger un Statut.\r\nMeilleure vitesse d\'attaque que la moyenne.\r\nVient avec une polarité V.', 'Faible dégâts d\'Impact et de Perforation, étant moins efficace contre les Boucliers et les Armures.'),
(62, 'Cyngas', 'Libérez des rafales de chaos mortellement précises.', 'La Cyngas est la première arme Archwing à rafale.\r\nLa Cyngas est la troisième arme archwing à faire le plus de dégâts par tir parmi les Fusils-Arch, après le Velocitus et le Grattler. ', 'Les parties du Cyngas s\'obtiennent dans les syndicats.', '../assets/img/production/production_Cyngas.png', '../assets/img/stats/stats_Cyngas.png', NULL, NULL, 19, '../assets/img/picture/picture_Cyngas.png', 'De hauts dégâts.\r\nUne haute précision.\r\nPlus haute chance de dégâts de statut parmi les Fusils-Arch. ', '    Peu de munitions dans le chargeur.\r\n    Chance de coups critiques faible. '),
(63, 'Kaszas', 'Devenez un ange de la mort avec cette faux Archwing.', 'La Kaszas est une faux prévue pour le système de vol Archwing. Elle fut introduite lors de l\'Update 17.5. ', 'Les parties du Kaszas s\'obtiennent dans les syndicats.', '../assets/img/production/production_Kaszas.png', '../assets/img/stats/stats_Kaszas.png', NULL, NULL, 19, '../assets/img/picture/picture_Kaszas.png', '     Forts dégâts de Perforation – efficace contre les Armures.\r\n    A égalité avec le Knux pour les dégâts de mêlée, en Archwing.\r\n    Possède une polarité D. ', '     Faibles dégâts d\'Impact – moins efficace contre les Boucliers.\r\n    Faibles chances de Coup Critique, comparée à la plupart des armes de mêlée Archwing. '),
(64, 'Fluctus', 'Une arme énergétique Archwing qui envoie des ondes de plasma létal s\'écraser sur les ennemis', 'Le Fluctus est un fusil réservé au système de vol Archwing. Il fut introduit lors de l\'Update 15.7.2.', 'Le Schéma du Fluctus est obtenable dans le laboratoire Tenno du dojo', '../assets/img/production/production_Fluctus.png', '../assets/img/stats/stats_Fluctus.png', NULL, NULL, 18, '../assets/img/picture/picture_Fluctus.png', '     Dégâts de base élevés.\r\n    Les projectiles ont une large zone de frappe (attaque par onde).\r\n    Les projectiles peuvent traverser les ennemis et le décor. ', '     Les projectiles ne sont pas instantanés (attaque par onde)\r\n    Portée limitée à 275 mètres. '),
(65, 'Velocitus', 'Lorsqu\'il est complètement chargé, le canon magnétisé du Velocitus accélère une balle de métal à des vitesses hallucinantes, traversant les coques et anéantissant l\'armure.', 'Le Velocitus est un fusil réservé au système Archwing. Il s\'agit de la première arme ayant des dégâts Magnétique Magnetic w de base. ', 'Le schéma du Velocitus est obtenable dans le laboratoire Tenno du dojo.', '../assets/img/production/production_Velocitus.png', '../assets/img/stats/stats_Velocitus.png', NULL, NULL, 18, '../assets/img/picture/picture_Velocitus.png', '    Plus hauts dégâts de base des armes Archwing..\r\n    Les dégâts Magnétique sont extrêmement efficaces contre les Boucliers.\r\n    Bonnes chances de coup critique.\r\n    Bonnes chances de Statut.\r\n    Bons dégâts critiques.\r\n    Grand chargeur.\r\n    Dégâts de Perforation présents sur tous les tirs, chargés ou non. ', '    Cadence de tir faible une fois chargée.\r\n    Temps de charge moyen.\r\n    Faible vitesse des projectiles.\r\n    Les tirs qui ne sont pas complètement chargés feront les même dégâts que ceux non chargés. ');
INSERT INTO `m3s4L0v3_items` (`id`, `name`, `codex`, `definition`, `acquisition`, `production`, `stats`, `precepts`, `comparison`, `id_m3s4L0v3_subCategories`, `picture`, `avantages`, `inconvenients`) VALUES
(66, 'Doubles Decurion', 'Délivrant deux flots extrêmement précis de tirs soutenus, les Décurions sont spécialement conçus pour le combat spatial.', 'Les Doubles Décurions sont des fusils jumeaux exclusifs au système de vol Archwing. ', 'Les parties des Doubles Decurions s\'obtiennent dans les syndicats.', '../assets/img/production/production_DecurionD.png', '../assets/img/stats/stats_DecurionD.png', NULL, NULL, 18, '../assets/img/picture/picture_DecurionD.png', '     Chance de coup critique élevée.\r\n    Le chargeur se remplit très vite.\r\n    Gros dégâts critiques.\r\n    Aucune perte de dégâts sur la distance. ', '     Chargeur plutôt petit.\r\n    Recul non négligeable, rendant l\'arme peu précise à moyenne et longue portée. '),
(67, 'Phaedra', 'Éliminez des ennemis dans l\'espace avec la Phaedra, la grande sœur du Soma.', 'La Phaedra est un fusil Archwing à gros calibre, il possède des mécaniques et un aspect similaire au Soma. Il est disponible depuis l\'Update 17.5. ', 'Les parties du Phaedra s\'obtiennent dans les syndicats.', '../assets/img/production/production_Phaedra.png', '../assets/img/stats/stats_Phaedra.png', NULL, NULL, 18, '../assets/img/picture/picture_Phaedra.png', '    Hauts dégâts de Perforation - efficace contre les Armures.\r\n    Possède une polarité V.\r\n    Très haute cadence de tir une fois en chauffe.\r\n    Bonne chance de Statut pour un fusil Archwing. ', '    Demande un temps de chauffe pour atteindre sa cadence de tir optimale.\r\n    La faible précision rends difficile les tirs à plus de 300 mètres.\r\n    La haute cadence de tir vide le chargeur rapidement. '),
(68, 'Grattler', 'Faites exploser vos ennemis avec les obus explosifs de ce canon Archwing.', 'Le Grattler est une arme automatique à quatre canons pour l\'Archwing. Ses projectiles explosifs sont idéaux pour faire le ménage dans les groupes d\'ennemis, mais disposent d\'une portée limitée et d\'un temps de trajet. ', 'Le schéma du Grattler s\'obtient dans le laboratoire chimie du dojo.', '../assets/img/production/production_Grattler.png', '../assets/img/stats/stats_Grattler.png', NULL, NULL, 18, '../assets/img/picture/picture_Grattler.png', '    Hauts dégâts de Perforation - très efficace contre l\'armure des Grineers.\r\n    Haute chance de critiques et de statut pour une arme Archwing.\r\n    Peut perforer plusieurs ennemis avec sa perforation innée.\r\n    Fait des dégâts Explosif à l\'impact.\r\n    Possède une polarité V. ', '    Portée maximale de 350 mètres.\r\n    Les projectiles ont un temps de trajet.\r\n    Les dégâts explosifs peuvent endommager l\'utilisateur s\'il se trouve trop proche. '),
(69, 'Capteurs Neuronaux', 'Un lien neuronal implanté pour contrôler les augmentations. De fabrication Grineer.', 'Les Capteurs Neuronaux sont un composant rare présent sur Jupiter et dans la Forteresse Kuva. On les trouve généralement par quantité de 1 à 4. ', 'Eliminer Alad V (Themisto, Jupiter), plutôt que les ennemis standards et l\'ouverture des Conteneurs, est un bon moyen de récolte.\r\n\r\nDepuis l\'Update 16.4, les Raptors peuvent aussi en donner, ce qui ne s\'applique pas au reste d\'Europe. ', '../assets/img/production/production_capNeuro.png', '../assets/img/stats/stats_capNeuro.png', NULL, NULL, 17, '../assets/img/picture/picture_capNeuro.png', NULL, NULL),
(70, 'Cellule Orokin', 'Une ancienne cellule énergétique de l\'ère Orokin. 	', 'La Cellule Orokin est un composant rare qui peut être trouvé sur Saturne, Cérès, Épaves Orokin et dans les alertes. On les trouve en quantité unique.', 'Le Général Sargas Ruk et le Lieutenant Lech Kril offrent plus de chance d\'en donner une.', '../assets/img/production/production_celOrokin.png', '../assets/img/stats/stats_celOrokin.png', NULL, NULL, 17, '../assets/img/picture/picture_celOrokin.png', NULL, NULL),
(71, 'Cristal d\'Argon', 'La ressource radioactive sur laquelle est basé le Néant. Elle se décompose chaque jour en dehors du Néant.', 'Les Cristaux d\'Argon sont une ressource rare qui se trouve dans le Néant et dans la mission d\'Assassinat du Conseiller Vay Hek. Contrairement aux autres ressources, les cristaux se désintègrent après une période de temps limitée. Après cette période, ces ressources vont disparaître de l\'inventaire de l\'utilisateur et doivent être réacquises si nécessaire. ', 'Le Cristal d\'Argon apparaît le plus souvent dans les conteneurs et casiers. Les mods Astuce du voleur, Maître voleur, Recherche sur un Kubrow ou Kavat peuvent vous aider à trouver des conteneurs qui peuvent contenir des Cristaux d\'Argon.', 'Le cristal d\'argon ne peut pas être fabriquer.', '../assets/img/stats/stats_Argon.png', NULL, NULL, 17, '../assets/img/picture/picture_Argon.png', NULL, NULL),
(72, 'Extrait de Nitain', 'Chaque flacon est produit par l\'extraction laborieuse de la substance en pressant des milliards de micro-organismes vivant dans les cheminées volcaniques océaniques. ', 'L\'Extrait de Nitain est une ressource spéciale qui peut être achetée dans les offres des Ondes Nocturnes, trouvée dans les caches de ressources dans certaines missions, ou récompensée par les Mise à prix de la Purge de Goules.', '5 Extrait de Nitain peuvent être acheté contre 15 Jeton de Cristal auprès des Ondes Nocturnes. ', '../assets/img/production/production_Nitain.png', '../assets/img/stats/stats_Nitain.png', NULL, NULL, 17, '../assets/img/picture/picture_Nitain.png', NULL, NULL),
(73, 'Gallium', '	Un métal mou utilisé dans les armes microélectroniques et énergétiques. ', 'Le Gallium est un composant rare qui peut être trouvé sur Mars et Uranus. On en trouve par quantité de 2 à 3.', 'On en trouve le plus souvent en tuant les boss Lieutenant Lech Kril ou Tyl Regor, plutôt que sur les ennemis standards. Il peut aussi être obtenu lors de mission d\'excavation sur Mars et Uranus. ', '../assets/img/production/production_Gallium.png', '../assets/img/stats/stats_Gallium.png', NULL, NULL, 17, '../assets/img/picture/picture_Gallium.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `m3s4L0v3_itemsparts`
--

CREATE TABLE `m3s4L0v3_itemsparts` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_m3s4L0v3_items` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `m3s4L0v3_roles`
--

CREATE TABLE `m3s4L0v3_roles` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `m3s4L0v3_roles`
--

INSERT INTO `m3s4L0v3_roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `m3s4L0v3_saleannouncement`
--

CREATE TABLE `m3s4L0v3_saleannouncement` (
  `id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `postDate` date NOT NULL,
  `id_m3s4L0v3_users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `m3s4L0v3_searchplayers`
--

CREATE TABLE `m3s4L0v3_searchplayers` (
  `id` int NOT NULL,
  `content` text NOT NULL,
  `postDate` date NOT NULL,
  `id_m3s4L0v3_users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `m3s4L0v3_subcategories`
--

CREATE TABLE `m3s4L0v3_subcategories` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_m3s4L0v3_categories` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `m3s4L0v3_subcategories`
--

INSERT INTO `m3s4L0v3_subcategories` (`id`, `name`, `id_m3s4L0v3_categories`) VALUES
(1, 'Arc', 2),
(2, 'Fusil', 2),
(3, 'Fusil à pompe', 2),
(4, 'Simple', 3),
(5, 'Doubles', 3),
(6, 'Armes de jet', 3),
(7, 'Simple', 4),
(8, 'Doubles', 4),
(9, 'Armes Lourdes', 4),
(10, 'Warframe', 1),
(11, 'Sentinelles', 6),
(12, 'Compagnons', 5),
(13, 'SentinellesWeapons', 6),
(14, 'Archwings', 7),
(17, 'ressources', 10),
(18, 'ArchFusils', 8),
(19, 'ArchMêlées', 9);

-- --------------------------------------------------------

--
-- Structure de la table `m3s4L0v3_users`
--

CREATE TABLE `m3s4L0v3_users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `id_m3s4L0v3_roles` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `announcementneedsparts`
--
ALTER TABLE `announcementneedsparts`
  ADD PRIMARY KEY (`id`,`id_m3s4L0v3_saleAnnouncement`),
  ADD KEY `announcementNeedsParts_m3s4L0v3_saleAnnouncement1_FK` (`id_m3s4L0v3_saleAnnouncement`);

--
-- Index pour la table `m3s4L0v3_categories`
--
ALTER TABLE `m3s4L0v3_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `m3s4L0v3_faq`
--
ALTER TABLE `m3s4L0v3_faq`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `m3s4L0v3_items`
--
ALTER TABLE `m3s4L0v3_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m3s4L0v3_items_m3s4L0v3_subCategories0_FK` (`id_m3s4L0v3_subCategories`);

--
-- Index pour la table `m3s4L0v3_itemsparts`
--
ALTER TABLE `m3s4L0v3_itemsparts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m3s4L0v3_itemsParts_m3s4L0v3_items0_FK` (`id_m3s4L0v3_items`);

--
-- Index pour la table `m3s4L0v3_roles`
--
ALTER TABLE `m3s4L0v3_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `m3s4L0v3_saleannouncement`
--
ALTER TABLE `m3s4L0v3_saleannouncement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m3s4L0v3_saleAnnouncement_m3s4L0v3_users0_FK` (`id_m3s4L0v3_users`);

--
-- Index pour la table `m3s4L0v3_searchplayers`
--
ALTER TABLE `m3s4L0v3_searchplayers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m3s4L0v3_searchPlayers_m3s4L0v3_users0_FK` (`id_m3s4L0v3_users`);

--
-- Index pour la table `m3s4L0v3_subcategories`
--
ALTER TABLE `m3s4L0v3_subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m3s4L0v3_subCategories_m3s4L0v3_categories0_FK` (`id_m3s4L0v3_categories`);

--
-- Index pour la table `m3s4L0v3_users`
--
ALTER TABLE `m3s4L0v3_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m3s4L0v3_users_m3s4L0v3_roles0_FK` (`id_m3s4L0v3_roles`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `m3s4L0v3_categories`
--
ALTER TABLE `m3s4L0v3_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `m3s4L0v3_faq`
--
ALTER TABLE `m3s4L0v3_faq`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `m3s4L0v3_items`
--
ALTER TABLE `m3s4L0v3_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `m3s4L0v3_itemsparts`
--
ALTER TABLE `m3s4L0v3_itemsparts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `m3s4L0v3_roles`
--
ALTER TABLE `m3s4L0v3_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `m3s4L0v3_saleannouncement`
--
ALTER TABLE `m3s4L0v3_saleannouncement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `m3s4L0v3_searchplayers`
--
ALTER TABLE `m3s4L0v3_searchplayers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `m3s4L0v3_subcategories`
--
ALTER TABLE `m3s4L0v3_subcategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `m3s4L0v3_users`
--
ALTER TABLE `m3s4L0v3_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `announcementneedsparts`
--
ALTER TABLE `announcementneedsparts`
  ADD CONSTRAINT `announcementNeedsParts_m3s4L0v3_itemsParts0_FK` FOREIGN KEY (`id`) REFERENCES `m3s4L0v3_itemsparts` (`id`),
  ADD CONSTRAINT `announcementNeedsParts_m3s4L0v3_saleAnnouncement1_FK` FOREIGN KEY (`id_m3s4L0v3_saleAnnouncement`) REFERENCES `m3s4L0v3_saleannouncement` (`id`);

--
-- Contraintes pour la table `m3s4L0v3_items`
--
ALTER TABLE `m3s4L0v3_items`
  ADD CONSTRAINT `m3s4L0v3_items_m3s4L0v3_subCategories0_FK` FOREIGN KEY (`id_m3s4L0v3_subCategories`) REFERENCES `m3s4L0v3_subcategories` (`id`);

--
-- Contraintes pour la table `m3s4L0v3_itemsparts`
--
ALTER TABLE `m3s4L0v3_itemsparts`
  ADD CONSTRAINT `m3s4L0v3_itemsParts_m3s4L0v3_items0_FK` FOREIGN KEY (`id_m3s4L0v3_items`) REFERENCES `m3s4L0v3_items` (`id`);

--
-- Contraintes pour la table `m3s4L0v3_saleannouncement`
--
ALTER TABLE `m3s4L0v3_saleannouncement`
  ADD CONSTRAINT `m3s4L0v3_saleAnnouncement_m3s4L0v3_users0_FK` FOREIGN KEY (`id_m3s4L0v3_users`) REFERENCES `m3s4L0v3_users` (`id`);

--
-- Contraintes pour la table `m3s4L0v3_searchplayers`
--
ALTER TABLE `m3s4L0v3_searchplayers`
  ADD CONSTRAINT `m3s4L0v3_searchPlayers_m3s4L0v3_users0_FK` FOREIGN KEY (`id_m3s4L0v3_users`) REFERENCES `m3s4L0v3_users` (`id`);

--
-- Contraintes pour la table `m3s4L0v3_subcategories`
--
ALTER TABLE `m3s4L0v3_subcategories`
  ADD CONSTRAINT `m3s4L0v3_subCategories_m3s4L0v3_categories0_FK` FOREIGN KEY (`id_m3s4L0v3_categories`) REFERENCES `m3s4L0v3_categories` (`id`);

--
-- Contraintes pour la table `m3s4L0v3_users`
--
ALTER TABLE `m3s4L0v3_users`
  ADD CONSTRAINT `m3s4L0v3_users_m3s4L0v3_roles0_FK` FOREIGN KEY (`id_m3s4L0v3_roles`) REFERENCES `m3s4L0v3_roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
