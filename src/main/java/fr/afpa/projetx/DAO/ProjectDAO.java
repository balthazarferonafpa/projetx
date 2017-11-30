package fr.afpa.projetx.DAO;

import fr.afpa.projetx.models.Project;
import org.springframework.stereotype.Repository;


/**
 * Spring Data JPA repository for the Project entity.
 */
@SuppressWarnings("unused")
@Repository
public interface ProjectDAO {

    public void createProject(Project project);
    public void updateProject(Project project);


}
