<?php
session_start();
include '../config.php';
include '../models/database.php';
include_once '../models/usersModel.php';
include '../controllers/loginController.php';
include_once 'header.php';
?>
    <div class="container my-5">
        <div class="row">
            <div class="col-3 ctn mr-4">
                <div class="row">
                    <a href="infos.php" class="col-12 text-white mt-5 mb-3">Mes informations</a>
                    <a href="modifyUserPassword.php" class="col-12 text-white my-3">Modifier mon mot de passe</a>
                    <a href="deleteMyInfos.php" class="col-12 text-white my-3 mb-4">Supprimer mon compte</a>
                </div>
            </div>
            <div class="col-8 ctn">
                <h1 class="text-center mt-4">Mes informations</h1>
                <p class="mt-4">Votre nom d'utilisateur est : <?= $_SESSION['profile']['username'] ?></p>
                <p>Votre mail est : <?= $_SESSION['profile']['mail'] ?>
            </div>
        </div>
    </div>
<?php
include_once 'footer.php';
?>