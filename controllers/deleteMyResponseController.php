<?php
$forumResponse = new forumResponses();

if(isset($_POST['deletePost'])){
    if(isset($_POST['deleteResponseId'])){
        $forumResponse->id = $_POST['deleteResponseId'];
        // Méthode permettant la suppression d'une question
        $forumResponse->deleteUserResponse();
        //Et on le redirige vers ses posts
        header('location: usersPostResponse.php?id=' . $_SESSION['profile']['id']);
        exit();
    }else{
        $messageError = 'Votre post n\'a pas pu être supprimé';
    }
}else{
    $messageError = 'Votre post n\'a pas pu être supprimé';
}
