<?php
$items = new items();

if(!empty($_GET['catId'])){
    $items->id = htmlspecialchars($_GET['catId']);
    if($items->checkItemsExistsById()){
    $showItems = $items->getItemsByCategory();
    }else {
        header('Location: ../index.php');
        exit;
    }
}else {
    header('Location: ../index.php');
    exit;
}