<?php
include 'tables.php';
?>
<!DOCTYPE html>
<html lang="fr" dir="ltr">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Warframe Sanctuary</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
        <link rel="stylesheet" type="text/css" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? '' : '../' ?>assets/css/style.css" media="screen" />
    </head>
    <body>
        <!-- Logo -->
        <div class="row">
            <div id="banner" class="col">
                <h1>WARFRAME SANCTUARY</h1>
            </div>
        </div>
        <!-- Navbar -->
        <div id="menu" class="container-fluid">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <a class="navbar-brand">Menu</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? '' : '../' ?>index.php">Accueil</a>
                        </li>
                        <li>
                            <a class="nav-link" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? '' : '../' ?>views/items.php?catId=1">
                                Warframes
                            </a>
                        </li>
                    <!-- Début liste Armes -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownWeapon" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Armes
                            </a>
                            <ul class="dropdown-menu bg-dark">
                            <!-- Appelle le tableau associatif -->
                                <?php foreach ($weapons as $weaponTitle => $weaponPage){
                                    ?><li class="nav-item dropdown-submenu">
                                        <a class="nav-link" href="<?= ($_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? 'views/' : '../views/') . $weaponPage ?>" role="button">
                                            <?= $weaponTitle ?>
                                        </a>
                                    </li>
                                <?php } ?>
                            </ul>
                        </li>
                    <!-- Fin liste Armes -->
                        <li>
                            <a class="nav-link" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? '' : '../' ?>views/items.php?catId=6">
                                Sentinelles
                            </a>
                        </li>
                        <li>
                            <a class="nav-link" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? '' : '../' ?>views/items.php?catId=5">
                                Compagnons
                            </a>
                        </li>
                    <!-- Début liste Archwings et Véhicules -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="archwingVehicule" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Archwings
                            </a>
                            <ul class="dropdown-menu bg-dark">
                            <!-- Appelle le tableau associatif -->
                                <?php foreach ($archwings as $archwingTitle => $archwingPage){
                                    ?><li class="nav-item dropdown-submenu">
                                        <a class="nav-link" href="<?= ($_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? 'views/' : '../views/') . $archwingPage ?>" role="button">
                                            <?= $archwingTitle ?>
                                        </a>
                                    </li>
                                <?php } ?>
                            </ul>
                        </li>
                    <!-- Fin liste Archwings et Véhicules -->
                        <li>
                            <a class="nav-link" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? '' : '../' ?>views/items.php?catId=10">
                                Ressources
                            </a>
                        </li>
                        <li>
                            <a class="nav-link disabled" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? '' : '../' ?>views/marketplace.php" aria-disabled="true">
                                Marketplace
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? '' : '../' ?>views/" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Discussions
                            </a>
                            <ul class="dropdown-menu bg-dark">
                            <!-- Appelle le tableau associatif -->
                                <?php foreach ($discussion as $discussionTitle => $discussionPage){
                                    ?><li class="nav-item dropdown-submenu">
                                        <a class="nav-link" href="<?= ($_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? 'views/' : '../views/') . $discussionPage ?>" role="button">
                                            <?= $discussionTitle ?>
                                        </a>
                                    </li>
                                <?php } ?>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="monCompte" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Mon compte
                            </a>
                            <div class="dropdown-menu bg-dark" aria-labelledby="monCompte">
                                <?php if(!isset($_SESSION['profile'])){ //Si l'utilisateur n'est pas connecté ?>
                                    <a class="dropdown-item" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? 'views/' : '../views/' ?>register.php">Inscription</a> 
                                    <a class="dropdown-item" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? 'views/' : '../views/' ?>login.php">Connexion</a>
                                <?php }else{ //Si la personne est connectée?>
                                    <a class="dropdown-item" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? 'views/' : '../views/' ?>infos.php">Mes informations</a> 
                                    <a class="dropdown-item" href="<?= $_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? '' : '../' ?>index.php?action=disconnect">Déconnexion</a> 
                                <?php } ?>         
                            </div>
                        </li>
                        <li class="mt-2 pl-5">
                            <?= isset($_SESSION['profile']) ? 'Bienvenue ' . $_SESSION['profile']['username']: ''?>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- fin Navbar -->
        </div>