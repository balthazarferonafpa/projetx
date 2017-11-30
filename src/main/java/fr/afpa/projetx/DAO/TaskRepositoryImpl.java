package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.Task;

public class TaskRepositoryImpl extends AbstractDao implements TaskRepository {
    @Override
    public void createTask(Task task) {
        getSession().persist(task);
    }

    @Override
    public void updateTask(Task task) {
        getSession().update(task);
    }
}
