<?php
include '../config.php';
include '../models/database.php';
include_once '../models/usersModel.php';
include_once '../controllers/registerController.php';
include 'header.php'
?>
<h1 class="m-5 text-center">Inscription</h1>
    <?php if(isset($messageSuccess)){ ?>
        <div class="alert alert-success text-center" role="alert">
          <?= $messageSuccess ?>
        </div>
    <?php } ?>
    <?php if(isset($messageFail)){ ?>
        <div class="alert alert-danger text-center" role="alert">
          <?= $messageFail ?>
        </div>
    <?php } ?>
<div class="container ctn my-5">
    <div class="row">
        <div class="col-8 mx-auto">
            <form action="#" method="POST">
                <div class="form-group mt-5">
                    <label for="username">Pseudo :</label>
                    <input type="text" class="form-control" id="username" aria-describedby="usernameHelp" name="username" onblur="checkUnavailability(this)"/>
                    <?php if(isset($formErrors['username'])){ ?>
                        <p class="text-danger"><?= $formErrors['username'] ?></p>
                <?php }else{ ?>
                        <small id="usernameHelp" class="form-text text-muted">Merci de renseigner votre nom d'utilisateur</small>
                    <?php } ?>
                </div>
                <div class="form-group">
                    <label for="mail">Adresse mail :</label>
                    <input type="email" class="form-control" id="mail" aria-describedby="mailHelp" name="mail" onblur="checkUnavailability(this)"/>
                    <?php if(isset($formErrors['mail'])){ ?>
                        <p class="text-danger"><?= $formErrors['mail'] ?></p>
                <?php }else{ ?>
                        <small id="mailHelp" class="form-text text-muted">Merci de renseigner votre adresse mail</small>
                <?php } ?>
                </div>
                <div class="form-group">
                    <label for="password">Mot de passe :</label>
                    <input type="password" class="form-control" id="password" aria-describedby="passwordHelp" name="password" />
                    <?php if(isset($formErrors['password'])){ ?>
                        <p class="text-danger"><?= $formErrors['password'] ?></p>
                <?php }else{ ?>
                        <small id="passwordHelp" class="form-text text-muted">Merci de renseigner votre mot de passe</small>
                        <?php } ?>
                </div>
                <div class="form-group">
                    <label for="passwordVerify">Mot de passe (confirmation) :</label>
                    <input type="password" class="form-control" id="passwordVerify" aria-describedby="passwordVerifyHelp" name="passwordVerify" />
                    <?php if(isset($formErrors['passwordVerify'])){ ?>
                        <p class="text-danger"><?= $formErrors['passwordVerify'] ?></p>
                <?php }else{ ?>
                        <small id="passwordVerifyHelp" class="form-text text-muted">Merci de confirmer votre mot de passe</small>
                        <?php } ?>
                </div>
                <div class="my-4 text-center">
                    <button type="submit" name="register" class="btn btn-secondary">Inscription</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php include 'footer.php' ?>