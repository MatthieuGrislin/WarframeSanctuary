<?php 
    //J'inclus mon header
    include_once 'header.php';
    //J'inclus mon controller
    require_once '../controllers/inscriptionController.php'; 
?>
<h1 class="text-center mt-5 mb-5">Inscription</h1>
<form class="container p-3 mb-5 ctn" action="inscription.php" method="POST">
    <div class="row">
        <p class="col text-right"><i class="fas fa-exclamation-triangle"></i> <span class="text-danger">*</span> = Champs obligatoire <i class="fas fa-exclamation-triangle"></i></p>
    </div>
    <!-- Username -->
    <p>Le nom d'utilisateur doit contenir au minimum 4 caractères et au maximum 30 caractères.</p>
    <div class="row">
        <div class="col form-group <?= count($_POST) > 0 ? (isset($inscriptionErrors['username']) ? 'has-danger' : 'has-success') : '' ?>">
            <label for="username">Nom d'utilisateur<span class="text-danger">*</span> : </label>
            <input oninput="checkPseudo(this)" type="text" name="username" id="username" placeholder="Ex : Mealya-Sama" class="form-control <?= count($_POST) > 0 ? (isset($inscriptionErrors['username']) ? 'is-invalid' : 'is-valid') : '' ?>" <?= isset($_POST['username']) ? 'value="' . $_POST['username'] . '"' : '' ?> />
            <?php if (isset($inscriptionErrors['username'])) { ?>
                <p class="text-danger text-center"><?= $inscriptionErrors['username'] ?></p>
            <?php } ?>
        </div>
    </div>
    <!-- Mot de passe -->
    <p>Le mot de passe doit :</p>
            <ul>
                <li>Commencer par une majuscule</Li>
                <li>Contenir au minimum 8 caractères</Li>
                <li>Contenir au moins 1 chiffre</Li>
            </ul>
    <div class="row">
        <div class="col-12 col-lg-6 form-group col <?= count($_POST) > 0 ? (isset($inscriptionErrors['password']) ? 'has-danger' : 'has-success') : '' ?>">
            <label for="password">Mot de passe<span class="text-danger">*</span> : </label>
            <input oninput="checkPassword(this)" type="text" name="password" id="password" placeholder="Ex : MotdepasseFort1" class="form-control <?= count($_POST) > 0 ? (isset($inscriptionErrors['password']) ? 'is-invalid' : 'is-valid') : '' ?>" <?= isset($_POST['password']) ? 'value="' . $_POST['password'] . '"' : '' ?> />
            <?php if (isset($inscriptionErrors['password'])) { ?>
                <p class="text-danger text-center"><?= $inscriptionErrors['password'] ?></p>
            <?php } ?>
        </div>
        <!-- Confirmation mot de passe -->
        <div class="form-group col-12 col-lg-6">
            <label for="confirmPassword">Confirmez le mot de passe<span class="text-danger">*</span> : </label>
            <input oninput="doubleCheckPass(this, password)" type="text" name="confirmPassword" id="confirmPassword" placeholder="Ex : MotdepasseFort1" class="form-control" />
            <p class="text-danger text-center"><?= (isset($_POST['confirmPassword']) && $_POST['confirmPassword'] != $_POST['password']) ? 'Les mots de passe ne correspondent pas' : '' ?></p>
        </div>
    </div>
    <!-- Email -->
    <div class="row">
        <div class="form-group col <?= count($_POST) > 0 ? (isset($inscriptionErrors['email']) ? 'has-danger' : 'has-success') : '' ?>">
            <label for="email">Adresse e-mail<span class="text-danger">*</span> : </label>
            <input oninput="checkEmail(this)" type="mail" name="email" id="email" placeholder="Ex : mealya.sama@gmail.com" class="form-control <?= count($_POST) > 0 ? (isset($inscriptionErrors['email']) ? 'is-invalid' : 'is-valid') : '' ?>" <?= isset($_POST['email']) ? 'value="' . $_POST['email'] . '"' : '' ?> />
                <?php if (isset($inscriptionErrors['email'])) { ?>
                    <p class="text-danger text-center"><?= $inscriptionErrors['email'] ?></p>
                <?php } ?>
        </div>
        <!-- Confirmation Email -->
        <div class="form-group col">
            <label for="confirmEmail">Confirmez l'adresse e-mail<span class="text-danger">*</span> : </label>
            <input oninput="doubleCheckEmail(this, email)" type="mail" name="confirmEmail" id="confirmEmail" placeholder="Ex : mealya.sama@gmail.com" class="form-control" />
            <p class="text-danger text-center"><?= (isset($_POST['confirmEmail']) && $_POST['confirmEmail'] != $_POST['email']) ? 'Les adresses e-mail ne correspondent pas' : '' ?></p>

        </div>
    </div>
    <div class="row">
        <div class="col"><input type="checkbox" name="validate" id="validate" />
            <label for="validate">J'accepte les <a href="#">CGU.</a></label>
            <p class="text-danger"> <?= isset($inscriptionErrors['validate']) ? $inscriptionErrors['validate'] : '' ?> </p>
        </div>
        <div class="col text-right">
            <button class="btn btn-success" type="submit" name="validateForm">Valider</button>
        </div>
    </div>
</form>



<!-- J'inclus mon footer -->
<?php include 'footer.php' ?>