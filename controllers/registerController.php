<?php
$formErrors = [];
//Vérification du formulaire d'inscription
if(isset($_POST['register'])){
    $user = new users();
    /**
     * Cette variable sert à savoir si les vérifications du mot de passe et de sa confirmation se sont déroulés avec succès
     */
    $isPasswordOk = true;
    if(!empty($_POST['mail'])){
        if(filter_var($_POST['mail'],FILTER_VALIDATE_EMAIL)){
            //J'hydrate mon instance d'objet user
            $user->mail = htmlspecialchars($_POST['mail']);
        }else{
            $formErrors['mail'] = 'L\'adresse mail doit être de la bonne forme.';
        }
    }else{
        $formErrors['mail'] = 'L\'adresse mail ne doit pas être vide.';
    }

    if(!empty($_POST['username'])){
        //J'hydrate mon instance d'objet user
        $user->username = htmlspecialchars($_POST['username']);
    }else{
        $formErrors['username'] = 'Le nom d\'utilisateur ne doit pas être vide.';
    }

    if(empty($_POST['password'])){
        $formErrors['password'] = 'Le mot de passe ne doit pas être vide.';
        $isPasswordOk = false;
    }
    if(empty($_POST['passwordVerify'])){
        $formErrors['passwordVerify'] = 'La confirmation du mot de passe ne doit pas être vide.';
        $isPasswordOk = false;
    }
    //Si les vérifications des mots de passe sont ok
    if($isPasswordOk){
        if($_POST['passwordVerify'] == $_POST['password']){
            //On hash le mot de passe avec la méthode de PHP
            $user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
        }else{
            $formErrors['password'] = $formErrors['passwordVerify'] = 'Les mots de passe ne sont pas identiques';
        }
    }

    if(empty($formErrors)){
        $isOk = true;
        //On vérifie si le pseudo est libre
        if($user->checkUserUnavailabilityByFieldName(['username'])){
            $formErrors['username'] = 'Le nom d\'utilisateur est déjà utilisé.';
            $isOk = false;
        }
        //On vérifie si le mail est libre
        if($user->checkUserUnavailabilityByFieldName(['mail'])){
            $formErrors['mail'] = 'L\'adresse mail est déjà utilisée.';
            $isOk = false;
        }
        //Si c'est bon on ajoute l'utilisateur
        if($isOk){
            $user->addUser();
            $messageSuccess = 'Votre inscription à bien été prise en compte' ;
        }else{
            $messageFail = 'Une erreur est survenu lors de votre inscription';
        }
    }
}
//Traitement de la demande AJAX
if(isset($_POST['fieldValue'])){
    //On vérifie que l'on a bien envoyé des données en POST
    if(!empty($_POST['fieldValue']) && !empty($_POST['fieldName'])){
        //On inclut les bons fichiers car dans ce contexte ils ne sont pas connu.
        include_once '../config.php';
        include_once '../models/database.php';
        include_once '../models/usersModel.php';
        $user = new users();
        $input = htmlspecialchars($_POST['fieldName']);
        $user->$input = htmlspecialchars($_POST['fieldValue']);
        //Le echo sert à envoyer la réponse au JS
        echo $user->checkUserUnavailabilityByFieldName([htmlspecialchars($_POST['fieldName'])]);
    }else{
        echo 2;
    }
}

?>