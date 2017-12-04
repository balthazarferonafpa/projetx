package fr.afpa.projetx.validators;

import fr.afpa.projetx.models.User;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


@Component
public class loginValidator implements Validator {


    public boolean supports(Class<?> aClass) {
        return false;
    }

    public void validate(Object obj, Errors errors) {
        User user = (User) obj;
        String email = user.getEmail();
        String password = user.getPassword();
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pesudo", "login.pseudo.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "login.password.empty");

    }
}
