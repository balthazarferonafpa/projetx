package fr.afpa.projetx.service;

import fr.afpa.projetx.DAO.ProjectDAO;
import fr.afpa.projetx.models.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("projectService")
@Transactional
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    ProjectDAO projectDAO;

    @Override
    public void createProject(Project project) {
        projectDAO.createProject(project);
    }

    @Override
    public void updateProject(Project project) {
        projectDAO.updateProject(project);
    }
}
