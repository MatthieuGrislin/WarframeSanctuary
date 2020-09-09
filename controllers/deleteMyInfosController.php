<?php
$user = new users();

if(isset($_POST['deleteProfil'])){
    $user->id = $_SESSION['profile']['id'];
    $user->deleteUser();
    $messagesuccess = DELETE_USER_SUCCESS;
    //Pour deconnecter l'utilisateur on détruit sa session
    session_destroy();
    //Et on le redirige vers l'accueil
    header('location: ../index.php');
    exit();
}else{
    $messageError = DELETE_USER_ERROR;
}