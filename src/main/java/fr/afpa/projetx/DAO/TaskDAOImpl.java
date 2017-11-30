package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.Task;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("TaskDao")
@Transactional
public class TaskDAOImpl extends AbstractDao<Integer, Task> implements TaskDAO {
    @Override
    public void createTask(Task task) {
        getSession().persist(task);
    }

    @Override
    public void updateTask(Task task) {
        getSession().update(task);
    }
}
