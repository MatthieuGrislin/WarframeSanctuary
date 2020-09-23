<?php
$formErrors = [];

//Vérification du formulaire de mise à jour de la question
if(isset($_POST['updateResponse'])){
    $forumResponse = new forumResponses();
    /**
     * Cette variable sert à savoir si les vérifications du mot de passe et de sa confirmation se sont déroulés avec succès
     */
    $isUpdateOk = true;
    if(empty($_POST['contentarea'])){
        $formErrors['contentarea'] = 'Le nouveau contenu n\'est pas valide';
        $isUpdateOk = false;
    }
    //Si les vérifications sont ok

    if($isUpdateOk){
        $forumResponse->id = htmlspecialchars($_GET['responseId']);
        $forumResponse->content = $_POST['contentarea'];
        $forumResponse->updateResponse();
        $messageSuccess = 'Votre question à bien été modifié.';
    }
}