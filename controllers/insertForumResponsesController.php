<?php
//$forum = new forumSubCat();
$forumResponse= new forumResponses();

$formErrors = [];
if(isset($_POST['validate'])){

    
    if(!empty($_POST['contentarea'])){
        //J'hydrate mon instance d'objet forum
        $forumResponse->content = htmlspecialchars($_POST['contentarea']);
    }else{
        $formErrors['contentarea'] = 'La question ne doit pas être vide.';
    }

    if(empty($formErrors)){
        $isOk = true;

        if($isOk){
            //J'hydrate mon instance d'objet forum
            $forumResponse->postDate = date('Y-m-d H:i:s');
            $forumResponse->id_m3s4L0v3_users = $_SESSION['profile']['id'];
            $forumResponse->id_m3s4L0v3_forumQuestions = htmlspecialchars($_GET['id']);
            $forumResponse->insertResponse();
            $messageSuccess = 'Votre message à bien été pris en compte' ;
        }else{
            $messageFail = 'Une erreur est survenu, veuillez réessayer. si l\'erreur perssiste contactez nous';
        }
    }
}
