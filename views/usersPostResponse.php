<!-- J'inclus mon header -->
<?php
session_start();
include '../config.php'; 
include '../models/database.php';
include 'tables.php';
include '../models/forumResponseModel.php';
include '../controllers/usersPostResponseController.php';
include 'deleteMyResponse.php';
include 'header.php'; 
?>  
    <?php if(isset($_SESSION['profile'])){ ?>
    <h1 class="text-center mt-5">Vos Posts</h1>
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
                <div class="my-5">
                    <?php foreach($showPost as $items) { ?>
                        <div class="ctn my-4">
                            <div class="text-center p-4">
                                <p class="h2">Détails de la réponse :</p>
                                <p><?= htmlspecialchars_decode($items->content) ?></p>
                            </div>
                            <hr class="my-4">
                            <div class="row mb-4">
                                <div class="col-6">
                                    <a href="yourPostResponse.php?responseId=<?= $items->id ?>" class="btn btn-secondary">Modifier</a>
                                </div>
                                <div class="col-6">
                                    <button onclick="deletePost(<?= $items->id ?>)" class="btn btn-danger" data-toggle="modal" data-target="#modalsupPost">Supprimer</a>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
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