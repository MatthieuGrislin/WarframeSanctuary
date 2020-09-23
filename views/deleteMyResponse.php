<?php 
include '../controllers/deleteMyResponseController.php'; ?>
<div class="modal fade" id="modalsupPost" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Etes-vous sur de vouloir supprimer votre post ?</h5>
            </div>
            <div class="modal-body">
                <div class="row  my-4">
                    <div class="col-6 mx-auto">
                        <button type="button" class="btn btn-secondary p-3 px-5" data-dismiss="modal">Non</button>
                    </div>
                    <form action="" method="POST">
                        <div class="col-6 pr-5">
                            <input type="hidden" name="deleteResponseId" id="deleteResponseId" />
                            <input type="submit" name="deletePost" class="btn btn-danger p-3 px-5" value="Oui" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>