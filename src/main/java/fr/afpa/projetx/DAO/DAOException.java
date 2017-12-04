package fr.afpa.projetx.DAO;

public class DAOException extends RuntimeException {

    public DAOException(Throwable cause) {
        super(cause);
    }

    public DAOException(String message, Throwable cause) {

        super(message, cause);
    }

    public DAOException(String message) {

        super(message);
    }
}
