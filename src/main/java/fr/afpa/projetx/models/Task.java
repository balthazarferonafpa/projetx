package fr.afpa.projetx.models;


import javax.persistence.*;
import java.io.Serializable;
import java.time.ZonedDateTime;
import java.util.Objects;

/**
 * A Task.
 */
@Entity
@Table(name = "task")
public class Task implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "startdate")
    private ZonedDateTime startdate;

    @Column(name = "enddate")
    private ZonedDateTime enddate;

    @Column(name = "description")
    private String description;

    @Column(name = "progressstatus")
    private Integer progressstatus;

    @ManyToOne
    private Project project;

    // jhipster-needle-entity-add-field - JHipster will add fields here, do not remove
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public Task name(String name) {
        this.name = name;
        return this;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ZonedDateTime getStartdate() {
        return startdate;
    }

    public Task startdate(ZonedDateTime startdate) {
        this.startdate = startdate;
        return this;
    }

    public void setStartdate(ZonedDateTime startdate) {
        this.startdate = startdate;
    }

    public ZonedDateTime getEnddate() {
        return enddate;
    }

    public Task enddate(ZonedDateTime enddate) {
        this.enddate = enddate;
        return this;
    }

    public void setEnddate(ZonedDateTime enddate) {
        this.enddate = enddate;
    }

    public String getDescription() {
        return description;
    }

    public Task description(String description) {
        this.description = description;
        return this;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getProgressstatus() {
        return progressstatus;
    }

    public Task progressstatus(Integer progressstatus) {
        this.progressstatus = progressstatus;
        return this;
    }

    public void setProgressstatus(Integer progressstatus) {
        this.progressstatus = progressstatus;
    }

    public Project getProject() {
        return project;
    }

    public Task project(Project project) {
        this.project = project;
        return this;
    }

    public void setProject(Project project) {
        this.project = project;
    }
    // jhipster-needle-entity-add-getters-setters - JHipster will add getters and setters here, do not remove

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Task task = (Task) o;
        if (task.getId() == null || getId() == null) {
            return false;
        }
        return Objects.equals(getId(), task.getId());
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(getId());
    }

    @Override
    public String toString() {
        return "Task{" +
            "id=" + getId() +
            ", name='" + getName() + "'" +
            ", startdate='" + getStartdate() + "'" +
            ", enddate='" + getEnddate() + "'" +
            ", description='" + getDescription() + "'" +
            ", progressstatus='" + getProgressstatus() + "'" +
            "}";
    }
}
