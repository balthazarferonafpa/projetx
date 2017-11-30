package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.User;

public class UserRepositoryImpl extends AbstractDao implements UserRepository {
    @Override
    public void createUser(User user) {
        getSession().persist(user);
    }

    @Override
    public void updateUser(User user) {
        getSession().update(user);
    }
}
