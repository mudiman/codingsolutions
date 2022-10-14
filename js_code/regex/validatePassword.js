function validatePassword(S){
    
    //this is default OUTPUT. You can change it.
    //var result = "-404";
    let result = ""
    if (S.length < 7) {
        result = `Password must be greater than 7 characters.\n`
    }
    if (S.search(/^[A-Z].*/) == -1) {
        result = `${result}The first character must be a capital letter.\n`
    }
    if (S.search(/.*\d.*/) == -1) {
        result = `${result}The password must contain at least one number.\n`
    }
    if (S.search('#') > -1) {
        result = `${result}There must not be a '#' character in the password.\n`
    }
    result = result.slice(0, result.length - 1);
    
        
    return result;
}

console.info(validatePassword('exelcersior'))