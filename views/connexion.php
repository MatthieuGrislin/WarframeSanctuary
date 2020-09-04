<?php 
// J'inclus mon controller
include '../models/database.php';
include '../controllers/connexionController.php';
//J'inclus mon header
include_once 'header.php';
?>
    <div class="container ctn my-5">
        <form action="connexion.php" method="POST">
            <div id="pseudoInput" class="form-group my-5 <?= count($_POST) > 0 ? (isset($connexionErrors['pseudo']) ? 'has-danger' : 'has-success') : '' ?>">
                <label for="pseudo">Pseudo :</label>
                <input oninput="checkPseudo(this)" type="text" id="pseudo" name="pseudo" placeholder="Ex : Mealya-Sama" class="form-control <?= count($_POST) > 0 ? (isset($connexionErrors['pseudo']) ? 'is-invalid' : 'is-valid') : '' ?>" <?= isset($_POST['pseudo']) ? 'value="' . $_POST['pseudo'] . '"' : '' ?> />
                    <?php if (isset($connexionErrors['pseudo'])) { ?>
                        <p class="text-danger text-center"><?= $connexionErrors['pseudo'] ?></p>
                    <?php } ?>
                    <p id="checkPseudo"></p>
            </div>
            <div class="form-group <?= count($_POST) > 0 ? (isset($connexionErrors['password']) ? 'has-danger' : 'has-success') : '' ?>">
                <label for="password">Mot de passe :</label>
                <input oninput="checkPassword(this)" type="password" id="password" name="password" placeholder="Ex : Motdepasse5*" class="form-control <?= count($_POST) > 0 ? (isset($connexionErrors['password']) ? 'is-invalid' : 'is-valid') : '' ?>" <?= isset($_POST['password']) ? 'value="' . $_POST['password'] . '"' : '' ?> />
                <?php if (isset($connexionErrors['password'])) { ?>
                    <p class="text-danger text-center"><?= $connexionErrors['password'] ?></p>
                <?php } ?>
                <p id="checkPassword"></p>
            </div>
            <div class="text-center">
                <button type="submit" name="send" class="btn btn-secondary my-3">Connexion</button>
            </div>
        </form>
        <div class="row">
            <div class="col text-center">
                <a href="#" class="btn my-3 btn-secondary">Mot de passe oublié ?</a>
            </div>
            <div class="col text-center">
                <a href="#" class="btn my-3 btn-secondary">Nom d'utilisateur oublié ?</a>
            </div>
        </div>
    </div>
<?php
include 'footer.php';
?>
