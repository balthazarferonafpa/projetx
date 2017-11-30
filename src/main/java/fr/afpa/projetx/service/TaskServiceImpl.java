package fr.afpa.projetx.service;

import fr.afpa.projetx.DAO.TaskDAO;
import fr.afpa.projetx.models.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("taskService")
@Transactional
public class TaskServiceImpl implements TaskService {

    @Autowired
    TaskDAO taskDAO;

    @Override
    public void createTask(Task task) {
        taskDAO.createTask(task);
    }

    @Override
    public void updateTask(Task task) {
        taskDAO.updateTask(task);
    }
}
