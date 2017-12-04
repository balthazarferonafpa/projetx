package fr.afpa.projetx.DAO;

public class DAOConfigurationException extends RuntimeException {


    public DAOConfigurationException(Throwable cause) {
        super(cause);
    }

    public DAOConfigurationException(String message, Throwable cause) {

        super(message, cause);
    }

    public DAOConfigurationException(String message) {

        super(message);
    }
}
