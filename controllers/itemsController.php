<?php
$items = new items();

if(!empty($_GET['catId'])){
    $items->id = htmlspecialchars($_GET['catId']);
    $showItems = $items->getItemsByCategory();
}else {
    header('Location: archwing.php');
    exit;
}