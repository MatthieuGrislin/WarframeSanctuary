-- Roles -- 

INSERT INTO `m3s4pl0v3_roles` (`id`, `name`) 
VALUES (NULL, 'Admin'), (NULL, 'Utilisateur');

-- Catégories --

INSERT INTO `m3s4pl0v3_categories` (`id`, `name`) 
VALUES (NULL, 'Warframe'), (NULL, 'Armes Principales'), (NULL, 'Armes Secondaires')
, (NULL, 'Armes de Mêlées'), (NULL, 'Compagnons'), (NULL, 'Sentinelles'), (NULL, 'Archwings'), (NULL, 'ArchFusils'), (NULL, 'ArchMêlées'), (NULL, 'Ressources');

-- Sous-catégories --

INSERT INTO `m3s4pl0v3_subcategories` (`id`, `name`, `id_m3s4pL0v3_categories`) 
VALUES (NULL, 'Warframe', '1'), (NULL, 'Arc', '2'), (NULL, 'Fusil', '2'), (NULL, 'Fusil à pompe', '2')
, (NULL, 'Simple', '3'), (NULL, 'Doubles', '3'), (NULL, 'Armes de jet', '3')
, (NULL, 'Simple', '4'), (NULL, 'Doubles', '4'), (NULL, 'Armes Lourdes', '4');

-- Items  --

INSERT INTO `m3s4pl0v3_items` (`id`, `name`, `codex`, `definition`, `launchDate`, `acquisition`, `production`, `stats`, `precepts`, `comparison`, `id_m3s4pL0v3_subCategories`)
VALUES (NULL, 'Gauss', 'Ne cessez jamais de bouger. La batterie de Gauss est rechargée par le mouvement, alimentant ainsi ses capacités cinétiques dévastatrices. Ils ne peuvent pas tuer ce qu'\'ils ne peuvent pas toucher.'
, 'Les moteurs sont prêts pour l'\'allumage. Systèmes de circulation de liquide de refroidissement en ligne. Tourné dans l'\'overdrive cinétique, le speedster Gauss laisse sa concurrence au milieu de la poussière. Accélérez et courez à travers de vastes paysages ou mers. Rechargez le pouvoir des frappes hostiles et réduisez la force de leur impact. Gauss a démarré dans la Update 25.7 : Conquérant d'\'Altra. '
, '2019-08-29'
, 'Les composants de Gauss s'\'obtiennent dans le mod de jeu Perturbation (Rotation C) sur Kelpie, Sedna. Chaque composant possède 10% de chance d'\'être obtenu.'
, '../assets/img/production_Gauss.png'
, '../assets/img/stats_Gauss.png'
, '../assets/img/picture_Gauss.png'
, NULL, NULL, '10');

UPDATE `m3s4pl0v3_items` SET `production` = '../assets/img/production/production_Gauss.png', `stats` = '../assets/img/stats/stats_Gauss.png'
, `picture` = '../assets/img/picture/picture_Gauss.png' WHERE `m3s4pl0v3_items`.`id` = 1; 

UPDATE `m3s4pl0v3_items` SET `codex` = 'Pourvue d'\'une main sûre et de réflexes aiguisés, Mesa est une tireuse hors-paire.', `definition` = 'Mesa est une Warframe basée sur le combat à distance. Ses capacités lui permettent d'\'abattre toutes les cibles qui se présentent et même de renforcer son armement ainsi que celui de ses alliés, tout en neutralisant les armes à feu ennemies.', `acquisition` = 'Pour obtenir les composants de Mesa il faut vaincre Alad V Mutaliste sur Eris.', `production` = '../assets/img/production/production_Mesa.png', `stats` = '../assets/img/stats/stats_Mesa.png'
, `picture` = '../assets/img/picture/picture_Mesa.png' WHERE `m3s4pl0v3_items`.`id` = 2; 

INSERT INTO `m3s4pl0v3_items` (`id`, `name`, `codex`, `definition`, `launchDate`, `acquisition`, `production`, `stats`, `precepts`, `comparison`, `id_m3s4pL0v3_subCategories`, `picture`) VALUES (NULL, 'Excalibur', 'Ils avaient gagné. Ils avaient retourné nos armes et notre technologie contre nous. Plus nous avancions, plus importantes étaient nos pertes. La guerre était perdue à moins que nous trouvions une solution. Dans le désespoir nous avons cherché dans le Néant. Le noir absolu, les ténèbres de l\'espace qui dépassent notre science et notre entendement.\r\n\r\nNous avons pris les quelques déséquilibrés revenus de cet endroit. Nous les avons entourés d\'une armure, un catalyseur pour leur affliction. nous leur avons donné des armes des temps anciens. Fusils et lames. Un nouveau guerrier, un nouveau code était né. Ces rejets, ces Tennos, allaient devenir nos sauveurs. Une caste de Dieux Guerriers de métal qui frapperaient avec fureur nos ennemis d\'une façon qu\'ils ne pourraient jamais comprendre.\r\n\r\nExcalibur fut le premier. ', 'Excalibur est une Warframe dont le thème est l\'épée. En brandissant n\'importe quelle lame, Excalibur découpe ses ennemis. Elle est l\'une des trois Warframes de départ. ', '2013-03-25', 'Les schémas de ses composants peuvent être obtenus sur le Capitaine Vor et le Lieutenant Lech Kril, sur la mission Assassinat du secteur War, Mars.', '../assets/img/production/production_Excalibur.png', '../assets/img/stats/stats_Excalibur.png', NULL, NULL, '10', '../assets/img/picture/picture_Excalibur.png'), (NULL, 'Nekros', 'Nekros utilises ses sombres pouvoirs pour manipuler ses ennemis, vivants comme morts.', 'Nekros est une Warframe basée sur la manipulation de la mort sortie à l\'Update 10. Il excelle dans le rôle de support.', '2013-09-13', 'Les composants de Nekros peuvent être obtenus sur Lephantis, dans les Épaves Orokin, en utilisant une Clé Epave Assassinat. ', '../assets/img/production/production_Nekros.png'
, '../assets/img/stats/stats_Nekros.png', NULL, NULL, '10', '../assets/img/picture/picture_Nekros.png');



Cet arc Grineer est la vengeance incarnée sous la forme de flèches à pointe explosive pouvant détoner en l'air ou à l'impact. Faible capacité de carquois mais les flèches sont récupérées.