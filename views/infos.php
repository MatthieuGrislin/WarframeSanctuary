<?php
session_start();
include '../config.php';
include '../models/database.php';
include_once '../models/usersModel.php';
include '../controllers/loginController.php';
include 'deleteMyInfos.php';
include_once 'header.php';
?>
    <div class="container my-5">
        <div class="row">
            <div class="col-4 ctn mr-4">
                <div class="row">
                    <ul>
                        <li class="col-12 mt-5 mb-3"><a href="infos.php" class="text-white">Mes informations</a></li>
                        <li class="col-12 mb-3"><a href="modifyUserPassword.php" class="text-white">Modifier mon mot de passe</a></li>
                        <li class="col-12 mb-5">
                            <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">
                                Supprimer mon compte
                            </button>  
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-7 ctn">
                <h1 class="text-center mt-4">Mes informations</h1>
                <p class="mt-4">Votre nom d'utilisateur est : <?= $_SESSION['profile']['username'] ?></p>
                <p>Votre mail est : <?= $_SESSION['profile']['mail'] ?>
            </div>
        </div>
    </div>
<?php
include_once 'footer.php';
?>