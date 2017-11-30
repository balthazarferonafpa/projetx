package fr.afpa.projetx.service;


import fr.afpa.projetx.models.Task;
import org.springframework.stereotype.Repository;


/**
 * Spring Data JPA repository for the Task entity.
 */
@SuppressWarnings("unused")
@Repository
public interface TaskService {

    public void createTask(Task task);
    public void updateTask(Task task);

}
