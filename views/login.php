<?php
session_start();
include '../config.php';
include '../models/database.php';
include_once '../models/usersModel.php';
include_once '../controllers/loginController.php';
include 'header.php';
?>
<h1 class="m-5 text-center">Connexion</h1>
<div class="container ctn my-5">
    <form action="#" method="POST" class="my-5">
        <div class="form-group">
            <label for="mail">Adresse mail :</label>
            <input type="email" class="form-control" id="mail" aria-describedby="mailHelp" name="mail"/>
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
        <div class="my-4 text-center">
            <button type="submit" name="login" class="btn btn-secondary">Connexion</button>
        </div>
    </form>
</div>

<?php include 'footer.php'; ?>