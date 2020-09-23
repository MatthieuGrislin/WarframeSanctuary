<?php
$forumQuestion = new forumQuestion();

if(isset($_POST['deletePost'])){
    if(isset($_POST['deleteQuestionId'])){
        $forumQuestion->id = $_POST['deleteQuestionId'];
        // Méthode permettant la suppression d'une question
        $forumQuestion->deleteUserQuestion();
        //Et on le redirige vers ses posts
        //header('location: usersPostQuestion.php?id=' . $_SESSION['profile']['id']);
        //exit();
var_dump($forumQuestion);

    }else{
        $messageError = 'Votre post n\'a pas pu être supprimé';
    }
}else{
    $messageError = 'Votre post n\'a pas pu être supprimé';
}