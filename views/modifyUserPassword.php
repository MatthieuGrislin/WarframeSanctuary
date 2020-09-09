<?php
session_start();
include '../config.php';
include '../models/database.php';
include_once '../models/usersModel.php';
include '../controllers/modifyPasswordController.php';
include 'deleteMyInfos.php';
include_once 'header.php';
?>
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
                <form action="modifyUserPassword.php" method=POST>
                    <h1 class="text-center mt-4">Mes informations</h1>
                    <div>
                        <label for="oldPassword" class="mt-5">Mot de passe actuel :</label>
                        <input type="password" class="form-control" id="oldPassword" aria-describedby="passwordHelp" name="oldPassword" />
                        <?php if(isset($formErrors['oldPassword'])){ ?>
                            <p class="text-danger"><?= $formErrors['oldPassword'] ?></p>
                        <?php }else{ ?>
                            <small id="passwordHelp" class="form-text text-muted mb-4">Merci de renseigner votre mot de passe actuel</small>
                            <?php } ?> 
                    </div>
                    <div>
                        <label for="newPassword">Nouveau mot de passe :</label>
                        <input type="password" class="form-control" id="newPassword" aria-describedby="passwordHelp" name="newPassword" />
                        <?php if(isset($formErrors['newPassword'])){ ?>
                            <p class="text-danger"><?= $formErrors['newPassword'] ?></p>
                        <?php }else{ ?>
                            <small id="passwordHelp" class="form-text text-muted mb-4">Merci de renseigner votre nouveau mot de passe</small>
                            <?php } ?> 
                    </div>
                    <div>
                        <label for="confirmNewPassword">Confirmation du nouveau mot de passe actuel :</label>
                        <input type="password" class="form-control " id="confirmNewPassword" aria-describedby="passwordHelp" name="confirmNewPassword" />
                        <?php if(isset($formErrors['confirmNewPassword'])){ ?>
                            <p class="text-danger"><?= $formErrors['confirmNewPassword'] ?></p>
                        <?php }else{ ?>
                            <small id="passwordHelp" class="form-text text-muted mb-5">Merci de renseigner votre confirmation de nouveau mot de passe</small>
                            <?php } ?> 
                    </div>
                    <div class="text-center my-5">
                        <button type="submit" name="modifyPassword" class="btn btn-secondary">Valider la modification</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

<?php 
include 'footer.php';
?>