<?php
$formErrors = [];
//Vérification du formulaire de changement de mot de passe
if(isset($_POST['modifyPassword'])){
    $user = new users();
    /**
     * Cette variable sert à savoir si les vérifications du mot de passe et de sa confirmation se sont déroulés avec succès
     */
    $isPasswordOk = true;
    if(empty($_POST['oldPassword'])){
        $formErrors['oldPassword'] = PASSWORD_ERROR_EMPTY;
        $isPasswordOk = false;
    }
    if(empty($_POST['newPassword'])){
        $formErrors['newPassword'] = NEW_PASSWORD_ERROR;
        $isPasswordOk = false;
    }
    if(empty($_POST['confirmNewPassword'])){
        $formErrors['confirmNewPassword'] = CONFIRM_NEW_PASSWORD_ERROR;
        $isPasswordOk = false;
    }
    //Si les vérifications des mots de passe sont ok
    if($isPasswordOk){
        if($_POST['confirmNewPassword'] == $_POST['newPassword']){
            
            $user->id = $_SESSION['profile']['id'];
            //On hash le mot de passe avec la méthode de PHP
            $user->password = password_hash($_POST['newPassword'], PASSWORD_DEFAULT);
            $user->changeUserPassword();
        }else{
            $formErrors['password'] = $formErrors['confirmNewPassword'] = PASSWORD_ERROR_NOTEQUAL;
        }
    }
}