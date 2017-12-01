package fr.afpa.projetx.models;


import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

/**
 * A Avatar.
 */
@Entity
@Table(name = "avatars")
public class Avatar implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_avatar;

    @Column(name = "nom")
    private String nom;

    @Column(name = "url")
    private String url;
    @OneToOne(fetch = FetchType.LAZY)
    @PrimaryKeyJoinColumn
    private User user;

    // jhipster-needle-entity-add-field - JHipster will add fields here, do not remove


    public Long getId_avatar() {
        return id_avatar;
    }

    public void setId_avatar(Long id_avatar) {
        this.id_avatar = id_avatar;
    }

    public String getNom() {
        return nom;
    }

    public Avatar nom(String nom) {
        this.nom = nom;
        return this;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getUrl() {
        return url;
    }


    public void setUrl(String url) {
        this.url = url;
    }
    // jhipster-needle-entity-add-getters-setters - JHipster will add getters and setters here, do not remove


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Avatar url(String url) {
        this.url = url;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Avatar avatar = (Avatar) o;
        if (avatar.getId_avatar() == null || getId_avatar() == null) {
            return false;
        }
        return Objects.equals(getId_avatar(), avatar.getId_avatar());
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(getId_avatar());
    }

    @Override
    public String toString() {
        return "Avatar{" +
            "id=" + getId_avatar() +
            ", nom='" + getNom() + "'" +
            ", url='" + getUrl() + "'" +
            "}";
    }
}
