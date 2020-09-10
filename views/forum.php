<!-- J'inclus mon header -->
<?php
session_start();
include '../config.php'; 
include '../models/database.php';
include '../models/forumModel.php';
include '../controllers/forumController.php';
include 'header.php'; 
?>
    <h1 class="text-center mt-5">Forum</h1>
    <div class="container">
        <div class="row text-center">
            <div class="col-3">
                <div class="my-5 ctn">
                    <p class="h4 pt-5 pb-3"><u>Navigation du Forum</u></p>
                    <p class="forumCategory my-4 mx-auto">News</p>
                    <div class="row">
                        <a href="forumQuestions.php?id=1" class="my-3 col-12 text-white">Annonces et Evénements</a>
                        <a href="forumQuestions.php?id=2" class="my-3 col-12 text-white">LiveStreams</a>
                    </div>
                    <p class="forumCategory my-4 mx-auto">Communautés</p>
                    <div class="row">
                        <a href="forumQuestions.php?id=3" class="my-3 col-12 text-white">Entraide</a>
                        <a href="forumQuestions.php?id=4" class="my-3 col-12 text-white">Discussions Générales</a>
                        <a href="forumQuestions.php?id=5" class="my-3 col-12 text-white">Recrutement</a>
                    </div>
                    <p class="forumCategory my-4 mx-auto">Retours et Bugs</p>
                    <div class="row mb-5">
                        <a href="forumQuestions.php?id=6" class="my-3 col-12 text-white">Vos avis nous intéressent</a>
                        <a href="forumQuestions.php?id=7" class="my-3 col-12 text-white">Bugs</a>
                    </div>
                </div>
            </div>
            <div class="col-8">
                <div class="ctn my-5">
                    <p class="h2 my-5">Régles du Forum</p>
                    <p></p>
                </div>
            </div>
        </div>
    </div>

<!-- J'inclus mon footer -->
<?php include 'footer.php' ?>