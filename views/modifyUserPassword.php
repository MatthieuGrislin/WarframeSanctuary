<?php
session_start();
include '../config.php';
include '../models/database.php';
include_once '../models/usersModel.php';
include '../controllers/modifyPasswordController.php';
include 'deleteMyInfos.php';
include_once 'header.php';
?>
    <?php if(isset($_SESSION['profile'])){ ?>
    <h1 class="text-center mt-5">Modifier votre mot de passe</h1>
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
    <?php }else { ?>
        <h1 class="text-center mt-5">Modifier votre mot de passe</h1>
        <div class="container ctn m-5 mx-auto">
            <h2 class="m-5">Pour accéder à la modification de votre mot de passe vous devez être inscrit et connectés</h2>
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
include 'footer.php';
?>