<!-- J'inclus mon header -->
<?php
include '../config.php';
include '../models/database.php';
include '../models/itemsModel.php';
include '../controllers/structureItemsController.php';
include 'header.php';
?>
    <div class="container my-5 ctn">
        <div class="row">
        <h1 class="text-center col-12 my-3"><u><?= $showInfosItems->name ?></u></h1>
            <div class="col col-md-8 col-lg-8">
                <div class="text-center">
                    <p class="h2 my-4">Codex</p>
                    <p><?= $showInfosItems->codex ?></p>
                </div>
                <hr class="my-5">
                <div class="text-center">
                    <p class="h2 mb-4">Informations</p>
                    <p><?= $showInfosItems->definition ?></p>
                </div>
                <hr class="my-5">
                <div class="text-center">
                    <p class="h2 mb-4">Acquisition</p>
                    <p><?= $showInfosItems->acquisition ?></p>
                </div>
                <hr class="my-5">
                <div class="text-center">
                    <p class="h2 mb-4">Production</p>
                    <p>Pour fabriquer <?= $showInfosItems->name ?>, il vous faudra les ressources présentes dans l'image ci-dessous.</p>
                    <p>Si vous ne connaissez pas une ou plusieurs ressource(s), je vous invite à consulter notre section dédiée à celles-ci.</p>
                    <img class="img-fluid my-4" src="<?= $showInfosItems->production ?>" alt="production de <?= $showInfosItems->name ?>" />
                </div>
            <?php if(in_array($itemsCategory, $catName)){ ?>
                <hr class="my-5">
                <div class="text-center">
                    <p class="h2 mb-4">Avantages</p>
                    <p><?= $showInfosItems->avantages ?></p>
                </div>
                <hr class="my-5">
                <div class="text-center mb-5">
                    <p class="h2 mb-4">Inconvénients</p>
                    <p><?= $showInfosItems->inconvenients ?></p>
                </div>
            <?php }?>
            </div>
            <div class="col col-md-3 col-lg-3 mb-5 text-center">
                <p class="h2 my-4">Statistiques</p>
                <img src="<?= $showInfosItems->stats ?>" alt="statistique de <?= $showInfosItems->name ?>" />
            </div>
            
        </div>
    </div>



<!-- J'inclus mon footer -->
<?php include 'footer.php' ?>