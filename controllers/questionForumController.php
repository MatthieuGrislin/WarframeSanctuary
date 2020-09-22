<?php
//$forum = new forumSubCat();
$forumQuestion = new forumQuestion();
$forumResponse = new forumResponses();

if(!empty($_GET['id'])){
    $forumQuestion->id = htmlspecialchars($_GET['id']);
    $showQuestions = $forumQuestion->getQuestionById();
    $forumResponse->id_m3s4L0v3_forumQuestions = htmlspecialchars($_GET['id']);
    $showResponses = $forumResponse->getResponse();
}else {
    header('Location: ../index.php');
    exit;
}