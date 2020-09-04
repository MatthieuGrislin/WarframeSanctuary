<!-- J'inclus mon header -->
<?php
include '../models/database.php';
include '../models/faqModel.php';
include '../controllers/faqController.php';
include 'header.php';
?>
    <h1 id="warframeList">Foire aux questions</h1>
    <div class="container my-5">
        <div class="row">
            <?php
                foreach($showfaqQuestionAndAnswer as $questionAndAnswer) {
            ?><div class="col-12 mb-3 text-center ctn mb-4">
                    <p class="h5 my-4"><u><?= $questionAndAnswer->question ?></u></p>
                    <p><?= $questionAndAnswer->answer ?></p>
                </div><?php 
            } ?>
        </div>
    </div>
    
<!-- J'inclus mon footer -->
<?php include 'footer.php' ?>