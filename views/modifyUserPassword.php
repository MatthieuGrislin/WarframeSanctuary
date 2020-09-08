<?php
session_start();
include '../config.php';
include '../models/database.php';
include_once '../models/usersModel.php';
include '../controllers/modifyPasswordController.php';
include_once 'header.php';
?>
    <div>
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
                <form action="" method=POST>
                    <h1 class="text-center mt-4">Mes informations</h1>
                    <label for="oldPassword" class="mt-5">Mot de passe actuel :</label>
                    <input type="password" class="form-control mb-4" id="oldPassword" aria-describedby="passwordHelp" name="oldPassword" />
                    <label for="newPassword">Nouveau mot de passe :</label>
                    <input type="password" class="form-control mb-4" id="newPassword" aria-describedby="passwordHelp" name="newPassword" />
                    <label for="confirmNewPassword">Confirmation du nouveau mot de passe actuel :</label>
                    <input type="password" class="form-control mb-5" id="confirmNewPassword" aria-describedby="passwordHelp" name="confirmNewPassword" />
                    <div class="text-center my-5">
                        <button type="submit" name="modifyPassword" class="btn btn-secondary">Valider la modification</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    </div>

<?php 
include 'footer.php';
?>