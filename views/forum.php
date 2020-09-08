<!-- J'inclus mon header -->
<?php
session_start();
include '../config.php'; 
include '../models/database.php';
include '../models/forumModel.php';
include '../controllers/forumController.php';
include 'header.php'; 
?>
    <h1 class="text-center mt-4">Forum</h1>
    <div class="container my-5 ctn">
        <p class="forumCategory my-4 mx-auto">News</p>
        <div class="row bgAForum">
            <a href="#" class="my-3 col-12 text-white">Annonces et Evénements</a>
            <a href="#" class="my-3 col-12 text-white">LiveStreams</a>
        </div>
        <p class="forumCategory my-4 mx-auto">Communautés</p>
        <div class="row bgAForum">
            <a href="#" class="my-3 col-12 text-white">Entraide</a>
            <a href="#" class="my-3 col-12 text-white">Discussions Générales</a>
            <a href="#" class="my-3 col-12 text-white">Recrutement</a>
        </div>
        <p class="forumCategory my-4 mx-auto">Retours et Bugs</p>
        <div class="row bgAForum mb-5">
            <a href="#" class="my-3 col-12 text-white">Vos avis nous intéressent</a>
            <a href="#" class="my-3 col-12 text-white">Bugs</a>
        </div>
    </div>

    <div class="container my-5 ctn">
        <div class="row">
            <?php
                foreach($showForumCatAndSubcat as $name) {
            ?><div class="col-12 mb-3 text-center">
                <p class="forumCategory my-4 mx-auto"><?= $name->catName ?></p>
                <?php 
                    foreach ($showForumCatAndSubcat as $name) { ?>
                    <div class="row bgAForum">
                        <a href="#" class="my-3 col-12 text-white"><?= $name->subCatName ?></a>
                    </div>
                    <?php } ?>
                </div><?php 
            } ?>
        </div>
    </div>


<!-- J'inclus mon footer -->
<?php include 'footer.php' ?>