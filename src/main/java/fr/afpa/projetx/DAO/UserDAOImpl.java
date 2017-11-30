package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.User;

import java.util.List;
import java.util.*;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("UserDAO")
@Transactional
public class UserDAOImpl extends AbstractDao<Integer, User> implements UserDAO {


    @Override
    public void createUser(User user) {
        getSession().persist(user);
    }

    @Override
    public void updateUser(User user) {
        getSession().update(user);
    }

    @Override
    @SuppressWarnings("unchecked")
    public User findByEmail(String email) {
        List<User> users = new ArrayList<User>();

        users = getSession()
                .createQuery("from User where email=?")
                .setParameter(0, email)
                .list();

        if (users.size() > 0) {
            return users.get(0);
        } else {
            return null;
        }

    }
}
