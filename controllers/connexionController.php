<?php
$regexList = array('pseudo' => '%^[A-ÿ0-9_\-]{4,30}$%', 'password' => '%^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$%');
$connexionErrors = array();

if(isset($_POST['send'])){
        //Si le champ est bien rempli

        if(!empty($_POST['pseudo'])){
            if(preg_match($regexList['pseudo'], $_POST['pseudo'])){
                $pseudo = htmlspecialchars($_POST['pseudo']);
            }else{
                $connexionErrors['pseudo'] = 'Votre pseudo est incorrect';
            }
        }else{
            $connexionErrors['pseudo'] = 'Veuillez renseigner votre pseudo';
        }

        if(!empty($_POST['password'])){
            if(preg_match($regexList['password'], $_POST['password'])){
                $password = htmlspecialchars($_POST['password']);
            }else{
                $connexionErrors['password'] = 'Votre mot de passe est incorrect';
            }
        }else{
            $connexionErrors['password'] = 'Veuillez renseigner votre mot de passe';
        }
    }
