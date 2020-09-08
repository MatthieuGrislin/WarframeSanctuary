<?php
$formErrors = [];
//Vérification du formulaire de changement de mot de passe
if(isset($_POST['modifyPassword'])){
    $user = new users();
    /**
     * Cette variable sert à savoir si les vérifications du mot de passe et de sa confirmation se sont déroulés avec succès
     */
    if(empty($_POST['oldPassword'])){
        $formErrors['oldPassword'] = PASSWORD_ERROR_EMPTY;
    }
    if(empty($_POST['newPassword'])){
        $formErrors['newPassword'] = NEW_PASSWORD_ERROR;
    }
    if(empty($_POST['confirmNewPassword'])){
        $formErrors['confirmNewPassword'] = PASSWORDVERIFY_ERROR_EMPTY;
    }
    //Si les vérifications des mots de passe sont ok
    if($isPasswordOk){
        if($_POST['passwordVerify'] == $_POST['password']){
            //On hash le mot de passe avec la méthode de PHP
            $user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
        }else{
            $formErrors['password'] = $formErrors['passwordVerify'] = PASSWORD_ERROR_NOTEQUAL;
        }
    }

    if(empty($formErrors)){
        $isOk = true;
        //On vérifie si le pseudo est libre
        if($user->checkUserUnavailabilityByFieldName(['username'])){
            $formErrors['username'] = USERNAME_ERROR_ALREADYUSED;
            $isOk = false;
        }
        //On vérifie si le mail est libre
        if($user->checkUserUnavailabilityByFieldName(['mail'])){
            $formErrors['mail'] = MAIL_ERROR_ALREADYUSED;
            $isOk = false;
        }
        //Si c'est bon on ajoute l'utilisateur
        if($isOk){
            $user->addUser();
        }
    }
}