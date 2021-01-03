package Beans;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class User{

    private int id;
    String pseudo;
    private String login;
    private String password;
    private String nom;
    private String prenom;
    private String image;
    private String role;
    private Date birthdate;
    private boolean statut;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getBirthdate() throws ParseException {
        return new SimpleDateFormat("dd/MM/yyyy").format(birthdate);
    }

    public void setBirthdate(String birthdate) throws ParseException {
        this.birthdate = new SimpleDateFormat("yyyy-MM-dd").parse(birthdate);
    }

    public boolean getStatut() {
        return statut;
    }

    public void setStatut(int statut){
        if(statut==0) {
            this.statut = false;
        }
        else if(statut==1) {
            this.statut = true;
        }
    }
}