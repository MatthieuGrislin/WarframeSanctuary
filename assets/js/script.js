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