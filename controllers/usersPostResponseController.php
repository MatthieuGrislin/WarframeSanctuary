<?php
$forumResponse = new forumResponses();

if(!empty($_GET['id'])){
    $forumResponse->id_m3s4L0v3_users = $_SESSION['profile']['id'];
    if($_GET['id'] == $_SESSION['profile']['id']){
    $showPost = $forumResponse->getResponseByUsersId();
    }else {
        header('Location: ../index.php');
        exit;
    }
}else {
    header('Location: ../index.php');
    exit;
}