<!-- J'inclus mon header -->
<?php
session_start();
include '../config.php'; 
include '../models/database.php';
include 'tables.php';
include '../models/forumModel.php';
include '../controllers/insertForumQuestionsController.php';
include 'header.php'; 
?>
    
    <?php if(isset($_SESSION['profile'])){ ?>
        <?php if(isset($messageSuccess)){ ?>
        <div class="alert alert-success text-center mt-4" role="alert">
          <?= $messageSuccess ?>
        </div>
    <?php } ?>
    <?php if(isset($messageFail)){ ?>
        <div class="alert alert-danger text-center" role="alert">
          <?= $messageFail ?>
        </div>
    <?php } ?>
    <div class="container-fluid">
        <div class="row text-center">
            <div class="col-12 col-md-3">
                <div class="my-5 ctn">
                    <p class="h4 pt-5 pb-3"><u>Navigation du Forum</u></p>
                    <ul class="forumMenu m-auto">
                        <!-- Nouveautés -->
                        <li class="nav-item dropdown my-5">
                            <a class="nav-link dropdown-toggle btn btn-secondary mr-5" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Nouveautés
                            </a>
                            <ul class="dropdown-menu bg-dark">
                                <!-- Appelle le tableau associatif -->
                                    <?php foreach ($news as $newsTitle => $newsPage){
                                        ?><li class="nav-item dropdown-submenu">
                                            <a class="nav-link" href="<?= ($_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? 'views/' : '../views/') . $newsPage ?>" role="button">
                                                <?= $newsTitle ?>
                                            </a>
                                        </li>
                                    <?php } ?>
                            </ul>
                        </li>
                        <!-- Communautés -->
                        <li class="nav-item dropdown my-5">
                            <a class="nav-link dropdown-toggle btn btn-secondary mr-5" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Communautés
                            </a>
                            <ul class="dropdown-menu bg-dark">
                                <!-- Appelle le tableau associatif -->
                                    <?php foreach ($communities as $communitiesTitle => $communitiesPage){
                                        ?><li class="nav-item dropdown-submenu">
                                            <a class="nav-link" href="<?= ($_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? 'views/' : '../views/') . $communitiesPage ?>" role="button">
                                                <?= $communitiesTitle ?>
                                            </a>
                                        </li>
                                    <?php } ?>
                            </ul>
                        </li>
                        <!-- Retours et Bugs -->
                        <li class="nav-item dropdown my-5">
                            <a class="nav-link dropdown-toggle btn btn-secondary mr-5" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Retours et Bugs
                            </a>
                            <ul class="dropdown-menu bg-dark">
                                <!-- Appelle le tableau associatif -->
                                <?php foreach ($returnAndBug as $returnAndBugTitle => $returnAndBugPage){ ?>
                                    <li class="nav-item dropdown-submenu">
                                        <a class="nav-link" href="<?= ($_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.php' ? 'views/' : '../views/') . $returnAndBugPage ?>" role="button">
                                            <?= $returnAndBugTitle ?>
                                        </a>
                                    </li>
                                <?php } ?>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-12 col-md-9">
                <div class="ctn my-5">
                    <form action="#" method="POST">
                        <div class="form-group mt-5 row">
                            <label for="title" class="col-12 h3">Titre :</label>
                            <input type="text" class="form-control col-10 mx-auto mt-3 mb-4" id="title" name="title" />
                        </div>
                        <div class="form-group mt-5 row">
                            <label for="contentarea" class="col-12 h3">Question :</label>
                            <div class="col-10 mx-auto mt-4 mb-5">
                                <textarea name="contentarea" id="contentarea"></textarea>
                            </div>
                        </div>
                        <div class="my-4 text-center">
                            <button type="submit" name="validate" class="btn btn-secondary">valider</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <?php }else { ?>
        <h1 class="text-center mt-5">Accès au Forum</h1>
        <div class="container ctn m-5 mx-auto">
            <h2 class="m-5">Pour accéder accéder au forum, vous devez être inscrit et connectés</h2>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-5 ctn text-center mb-5 mx-auto">
                    <p class="h4 mt-5">Si vous voulez vous inscrire c'est ici</p>
                    <a href="register.php" class=" btn btn-secondary m-4">Inscription</a>
                </div>
                <div class="col-12 col-md-5 ctn text-center mb-5 mx-auto">
                    <p class="h4 mt-5">Si vous voulez vous connecter c'est ici</p>
                    <a href="login.php" class=" btn btn-secondary m-4">Connexion</a>
                </div>
            </div>
        </div>
    <?php } ?>
<!-- J'inclus mon footer -->
<?php include 'footer.php' ?>