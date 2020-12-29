package BDD;

import java.sql.*;
import java.text.ParseException;

import Beans.User;

public class ConnexionBDD {

    public ConnexionBDD() { }


    public User getUser(String login, String password) {

        User user = null;

        String rqString = "Select * from User where login='"+login+"' and password='"+password+"';";
        ResultSet res = doRequest(rqString);
        int i = 0;
        try {
            while(res.next()) {
                if(i==0) {
                    user = new User();
                    user.setId(res.getInt("id"));
                    user.setPseudo(res.getString("pseudo"));
                    user.setLogin(res.getString("login"));
                    user.setPassword(res.getString("password"));
                    user.setNom(res.getString("nom"));
                    user.setPrenom(res.getString("prenom"));
                    user.setRole(res.getString("role"));
                    user.setBirthdate(res.getString("birthdate"));
                    user.setStatut(res.getInt("statut"));
                }
                else {
                    i++;
                    arret("Plus d'un utilisateur ayant le meme login ???");
                }

            }
        }
        catch (SQLException | ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return user;
    }
    
    public User getUser(String pseudo) {

        User user = null;

        String rqString = "Select * from User where pseudo='"+pseudo+"';";
        ResultSet res = doRequest(rqString);
        int i = 0;
        try {
            while(res.next()) {
                if(i==0) {
                    user = new User();
                    user.setId(res.getInt("id"));
                    user.setPseudo(res.getString("pseudo"));
                    user.setLogin(res.getString("login"));
                    user.setPassword(res.getString("password"));
                    user.setNom(res.getString("nom"));
                    user.setPrenom(res.getString("prenom"));
                    user.setRole(res.getString("role"));
                    user.setBirthdate(res.getString("birthdate"));
                    user.setStatut(res.getInt("statut"));
                }
                else {
                    i++;
                    arret("Plus d'un utilisateur ayant le meme login ???");
                }

            }
        }
        catch (SQLException | ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return user;
    }

    public boolean userNameExists(String login) throws SQLException {

        String rqString = "Select * from User where login='"+login+"';";
        ResultSet res = doRequest(rqString);
        if(res.next()){
            return true;
        }

        return false;
    }

    public void createUser(String login, String password, String nom, String prenom, String birthdate) {

        Connection con = connect();

        try {
            Statement stmt = con.createStatement();
            String rqString = "INSERT INTO User (role,login,password,nom,prenom, birthdate) VALUES ('USER','"+
                    login+"','"+password+"','"+prenom+"','"+nom+"','"+birthdate+"')";
            stmt.executeUpdate(rqString);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public ResultSet doRequest(String sql_string) {
        ResultSet results = null;
        Connection con = connect();
        try {
            Statement stmt = con.createStatement();
            results = stmt.executeQuery(sql_string);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return results;
    }


    public Connection connect() {

        Connection con = null;

        try {
        	Class.forName("org.mariadb.jdbc.Driver");
            //Class.forName("com.mysql.cj.jdbc.Driver");
        }
        catch (ClassNotFoundException e) {
            arret("Impossible de charger le pilote jdbc");
        }

        affiche("connexion a la base de données");

        try {
        	String DBurl = "jdbc:mariadb://localhost:3306/covid";
            //String DBurl = "jdbc:mysql://localhost:3306/covid";
            con = DriverManager.getConnection(DBurl,"root","k2zfpsxf");
            affiche("connexion réussie");
        }
        catch (SQLException e) {
            arret("Connection à la base de données impossible");
        }

        return con;
    }

    private static void affiche(String message) {
        System.out.println(message);
    }

    private static void arret(String message) {
        System.err.println(message);
        System.exit(99);
    }
}

