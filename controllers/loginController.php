<?php
$formErrors = [];
//Vérification du formulaire de connexion
if(isset($_POST['login'])){
    $user = new users();
    // si le champ mail n'est pas vide
    if(!empty($_POST['mail'])){
        // et qu'il correspond au filtre
        if(filter_var($_POST['mail'],FILTER_VALIDATE_EMAIL)){
            //J'hydrate mon instance d'objet user
            $user->mail = htmlspecialchars($_POST['mail']);
        }else{
            $formErrors['mail'] = 'L\'adresse mail doit être de la bonne forme.';
        }
    }else{
        $formErrors['mail'] = 'L\'adresse mail ne doit pas être vide.';
    }

    if(empty($_POST['password'])){        
        $formErrors['password'] = 'Le mot de passe ne doit pas être vide.';
    }
    
    if(empty($formErrors)){
        //On récupère le hash de l'utilisateur
       $hash = $user->getUserPasswordHash();
       //Si le hash correspond au mot de passe saisi
       if(password_verify($_POST['password'], $hash)){
           //On récupère son profil
            $userProfil = $user->getUserProfile();
            //On met en session ses informations
            $_SESSION['profile']['id'] = $userProfil->id;
            $_SESSION['profile']['username'] = $userProfil->username;
            $_SESSION['profile']['mail'] = $userProfil->mail;
            //On redirige vers une autre page.
            header('location:../index.php');
            exit();
       }else{
           $formErrors['password'] = $formErrors['mail'] = 'Le mot de passe et/ou l\'adresse mail est incorrecte';
       }
    }
}