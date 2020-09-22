<?php
$forumQuestion = new forumQuestion();

if(isset($_POST['deletePost'])){
    $forumQuestion->id = $_SESSION['profile']['id'];
    // Méthode permettant la suppression du compte utilisateur
    $forumQuestion->deletePost();
    //Et on le redirige vers l'accueil
    header('location: userPostQuestion.php');
    exit();
}else{
    $messageError = 'Votre post n\'a pas pu être supprimé';
}