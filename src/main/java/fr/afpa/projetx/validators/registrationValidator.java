package fr.afpa.projetx.validators;

import fr.afpa.projetx.models.User;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class registrationValidator implements Validator {



    public boolean supports(Class aClass) {
        return false;
    }

    public void validate(Object obj, Errors errors){
        User user= (User) obj;
        String prenom = user.getFirstname();
        String nom = user.getLastname();
        String email = user.getEmail();
        String password = user.getPassword();

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "prenom", "registration.prenom.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nom", "registration.nom.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pseudo", "registration.pseudo.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "registration.email.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "registration.password.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "passwordConf", "registration.passwordConf.empty");

//        if(!password.equals(confirmation)){
//            errors.rejectValue("password", "registration.passwords.mismatch" );
//        }

        if(!email.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")){
            errors.rejectValue("email", "registration.email.invalid");
        }

    }


}

