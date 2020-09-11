<?php
$forum = new forum();
$forum->id = htmlspecialchars($_GET['id']);
$showForumCatAndSubcat = $forum->getSubcatNameById();