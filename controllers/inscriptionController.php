<?php
$regexList = array('username' => '%^[A-ÿ0-9_\-]{4,30}$%', 'password' => '%^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$%');
$inscriptionErrors = array();

if(isset($_POST['validateForm'])){
    
    if(count($_POST) > 0){

        if(!empty($_POST['email'])){
            if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
                $email = htmlspecialchars($_POST['email']);
            }else{
                $inscriptionErrors['email'] = 'Merci de respecter le format d\'e-mail valide.';
            }
        }else{
            $inscriptionErrors['email'] = 'Veuillez renseigner votre e-mail.'; 
        }

        if(!empty($_POST['confirmEmail'])){
            if(filter_var($_POST['confirmEmail'], FILTER_VALIDATE_EMAIL)){
                $confirmEmail = htmlspecialchars($_POST['confirmEmail']);
            }else{
                $inscriptionErrors['confirmEmail'] = 'Merci de respecter le format d\'e-mail valide.';
            }
        }else{
            $inscriptionErrors['confirmEmail'] = 'Veuillez renseigner votre e-mail.'; 
        }

        if(!empty($_POST['username'])){
            if(preg_match($regexList['username'], $_POST['username'])){
                $username = htmlspecialchars($_POST['username']);
            }else{
                $inscriptionErrors['username'] = 'Merci de respecter le format lettres, numéros sans caractères spéciaux.';
            }
        }else{
            $inscriptionErrors['username'] = 'Veuillez renseigner un nom d\'utilisateur.'; 
        }

        if(!empty($_POST['password'])){
            if(preg_match($regexList['password'], $_POST['password'])){
                $password = htmlspecialchars($_POST['password']);
            }else{
                $inscriptionErrors['password'] = 'Utilisez 8 caractères, minimum 1 lettre et 1 chiffre.';
            }
        }else{
            $inscriptionErrors['password'] = 'Veuillez renseigner un mot de passe.'; 
        }

        if(!isset($_POST['validate'])){
            $inscriptionErrors['validate'] = 'Pour finaliser votre inscription, veuillez accepter les CGU';
        }
    }
}