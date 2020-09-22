<?php
$forumQuestion = new forumQuestion();

$formErrors = [];
if(isset($_POST['validate'])){

    if(!empty($_POST['title'])){
        //J'hydrate mon instance d'objet forum
        $forumQuestion->title = htmlspecialchars($_POST['title']);
    }else{
        $formErrors['title'] = 'Le titre ne doit pas être vide.';
    }
    if(!empty($_POST['contentarea'])){
        //J'hydrate mon instance d'objet forum
        $forumQuestion->content = htmlspecialchars($_POST['contentarea']);
    }else{
        $formErrors['contentarea'] = 'La question ne doit pas être vide.';
    }

    if(empty($formErrors)){
        $isOk = true;

        if($isOk){
            //J'hydrate mon instance d'objet forum
            $forumQuestion->postDate = date('Y-m-d H:i:s');
            $forumQuestion->id_m3s4L0v3_users = $_SESSION['profile']['id'];
            $forumQuestion->id_m3s4L0v3_forumSubCategories = htmlspecialchars($_GET['idSubCat']);
            $forumQuestion->recordQuestion();
            $messageSuccess = 'Votre message à bien été pris en compte' ;
        }else{
            $messageFail = 'Une erreur est survenu, veuillez réessayer. si l\'erreur perssiste contactez nous';
        }
    }
}
