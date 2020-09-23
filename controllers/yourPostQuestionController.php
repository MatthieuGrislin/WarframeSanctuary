<?php
$formErrors = [];

//Vérification du formulaire de mise à jour de la question
if(isset($_POST['updateQuestion'])){
    $forumQuestion = new forumQuestion();
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
        $forumQuestion->id = htmlspecialchars($_GET['questionId']);
        $forumQuestion->content = $_POST['contentarea'];
        $forumQuestion->updateQuestion();
        $messageSuccess = 'Votre question à bien été modifié.';
    }
}