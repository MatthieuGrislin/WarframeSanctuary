//verif inscription
var usernameRegex = /^[A-ÿ0-9_\-]{4,30}$/, passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,30}$/, emailRegex = /^([a-z0-9-.]{1,255})@([a-z0-9-.]{1,255}).([a-z]{1,10})$/;
function checkPseudo(username){
  if (usernameRegex.test(username.value) == true) {
      username.style.border = 'solid green 3px';
  }else{
      username.style.border = 'solid red 3px';
  }
}
function checkPassword(password){
  if (passwordRegex.test(password.value) == true) {
      password.style.border = 'solid green 3px';
  }else {
      password.style.border = 'solid red 3px';
  }
}
function checkEmail(email){
  if (emailRegex.test(email.value) == true) {
      email.style.border = 'solid green 3px';
  }else {
      email.style.border = 'solid red 3px';
  } 
}
function doubleCheckPass(confirmPass, password){
  if(confirmPass.value != password.value){
      confirmPass.style.border = 'solid red 3px';
  }else{
      confirmPass.style.border = 'solid green 3px';
  }
}
function doubleCheckEmail(confirmEmail, email){
  if(confirmEmail.value != email.value){
      confirmEmail.style.border = 'solid red 3px';
  }else{
      confirmEmail.style.border = 'solid green 3px';
  }
}

/* AJAX */

function checkUnavailability(input){
  //Instanciation de l'objet XMLHttpRequest permettant de faire de l'AJAX
  var request = new XMLHttpRequest();
  //Les données sont envoyés en POST et c'est le controlleur qui va les traiter
  request.open('POST', '../controllers/registerController.php', true);
  //Au changement d'état de la demande d'AJAX
  request.onreadystatechange = function () {
      //Si on a bien fini de recevoir la réponse de PHP (4) et que le code retour HTTP est ok (200)
      if (request.readyState == 4 && request.status == 200) {
          if(request.responseText == 1){ //Dans le cas ou la valeur dans le champ est déjà en BDD
              input.classList.remove('is-valid');
              input.classList.add('is-invalid');
          }else if(request.responseText == 2){ //Dans le cas où le champ est vide
              input.classList.remove('is-valid','is-invalid');
          }else{ //Dans le cas ou la valeur dans le champ n'est pas en BDD
              input.classList.remove('is-invalid');
              input.classList.add('is-valid');
          }
      };        
  }
  // Pour dire au serveur qu'il y a des données en POST à lire dans le corps
  request.setRequestHeader('Content-type','application/x-www-form-urlencoded');
  //Les données envoyées en POST. Elles sont séparées par un &
  request.send('fieldValue=' + input.value + '&fieldName=' + input.name);
}