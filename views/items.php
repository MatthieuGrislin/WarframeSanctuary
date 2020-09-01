<!-- J'inclus mon header -->
<?php
include 'header.php';
include '../models/itemsModel.php';
include '../controllers/itemsController.php';
?>
    <h1 id="warframeList">Liste des <?= !empty($showItems) ? $showItems[0]->catName : '' ?></h1>
    <div class="container my-5 ctn">
        <div class="row">
            <?php
                foreach($showItems as $items) {
            ?><div class="col-12 col-md-3 mb-3 text-center">
                    <figure>
                        <figcaption class="text-center my-3"><?= $items->name ?></figcaption>
                        <a href="pageStructureItems.php?id=<?= $items->id ?>">
                            <img src="<?=$items->picture ?>" class="img-fluid ctn" alt="une image de <?= $items->name ?>" title="une image de <?= $items->name ?>" />
                        </a>
                    </figure>
                </div><?php 
            } ?>
        </div>
    </div>
    
<!-- J'inclus mon footer -->
<?php include 'footer.php' ?>