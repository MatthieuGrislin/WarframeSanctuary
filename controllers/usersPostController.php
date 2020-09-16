<?php
$forum = new forum();
$forum->id_m3s4L0v3_users = htmlspecialchars($_GET['id']);
$showPost = $forum->getQuestionsByUserId();