<?php
session_start();
include '../config.php';
include '../models/database.php';
include_once '../models/usersModel.php';
include '../controllers/loginController.php';
include 'deleteMyInfos.php';
include_once 'header.php';
?>
    <?php if(isset($_SESSION['profile'])){ ?>
    <h1 class="text-center mt-5">Mes informations</h1>
    <div class="container my-5">
        <div class="row">
            <div class="col-3 ctn mr-4">
                <div class="row">
                    <ul>
                        <li class="col-12 mt-5 mb-3"><a href="infos.php" class="text-white">Mes informations</a></li>
                        <li class="col-12 mb-3"><a href="modifyUserPassword.php" class="text-white">Modifier mon mot de passe</a></li>
                        <li>
                            <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">
                                Supprimer mon compte
                            </button> 
                        </li> 
                    </ul>
                </div>
            </div>
            <div class="col-8 ctn">
                <h1 class="text-center mt-4">Mes informations</h1>
                <p class="mt-4">Votre nom d'utilisateur est : <?= $_SESSION['profile']['username'] ?></p>
                <p>Votre mail est : <?= $_SESSION['profile']['mail'] ?>
            </div>
        </div>
    </div>
    <?php }else { ?>
        <h1 class="text-center mt-5">Mes informations</h1>
        <div class="container ctn m-5 mx-auto">
            <h2 class="m-5">Pour accéder à vos informations vous devez être inscrit et connectés</h2>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-5 ctn text-center mb-5 mx-auto">
                    <p class="h4 mt-5">si vous voulez vous inscrire c'est ici</p>
                    <a href="register.php" class=" btn btn-secondary m-4">Inscription</a>
                </div>
                <div class="col-12 col-md-5 ctn text-center mb-5 mx-auto">
                    <p class="h4 mt-5">si vous voulez vous connecter c'est ici</p>
                    <a href="login.php" class=" btn btn-secondary m-4">Connexion</a>
                </div>
            </div>
        </div>
    <?php } ?>
<?php
include_once 'footer.php';
?>