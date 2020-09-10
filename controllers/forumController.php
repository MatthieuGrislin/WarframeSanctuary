<?php
$forum = new forumSubCat();
$forum->id = htmlspecialchars($_GET['id']);
$showForumCatAndSubcat = $forum->getSubcatNameById();