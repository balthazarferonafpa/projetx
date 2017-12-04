package fr.afpa.projetx.DAO;

import org.springframework.security.core.Authentication;

public interface AuthenticationFacade {

    Authentication getAuthentication();

}
