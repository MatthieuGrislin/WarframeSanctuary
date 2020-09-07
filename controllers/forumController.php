<?php
$forum = new forumSubCat();
//$forum->id_m3s4pL0v3_forumCategories = htmlspecialchars($_GET['id']);
$showForumCatAndSubcat = $forum->getCatAndSubcatNameById();

/*if(!empty($_GET['catId'])){
    $forum->id_m3s4pL0v3_forumCategories = htmlspecialchars($_GET['catId']);
    if($forum->getCatAndSubcatNameById()){
    $showForumCatAndSubcat = $forum->getCatAndSubcatNameById();

    }else {
        header('Location: ../forum.php');
        exit;
    }
}else {
    header('Location: ../forum.php');
    exit;
}*/