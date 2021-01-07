package BDD;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import Beans.Event;
import Beans.Location;
import Beans.User;

public class ConnexionBDD {

    public ConnexionBDD() { }


    public User getUser(String login, String password) throws SQLException {

        User user = null;

        String rqString = "Select * from User where login=? and password=?;";
        PreparedStatement preparedStatement = this.connect().prepareStatement(rqString);
        preparedStatement.setString(1, login);
        preparedStatement.setString(2, password);
        ResultSet res = preparedStatement.executeQuery();
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
                    user.setImage(res.getString("image"));
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

    public User getUser(String pseudo) throws SQLException {

        User user = null;

        String rqString = "Select * from User where pseudo=?;";
        PreparedStatement preparedStatement = this.connect().prepareStatement(rqString);
        preparedStatement.setString(1, pseudo);

        ResultSet res = preparedStatement.executeQuery();
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
                    user.setImage(res.getString("image"));
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

    public User getUser(int id) throws SQLException {

        User user = null;

        String rqString = "Select * from User where id=?;";
        PreparedStatement preparedStatement = this.connect().prepareStatement(rqString);
        preparedStatement.setInt(1, id);
        ResultSet res = preparedStatement.executeQuery();
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
                    user.setImage(res.getString("image"));
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

    public ArrayList<Event> getAllEvent() {

        ArrayList<Event> events = new ArrayList<Event>();

        String rqString = "Select * from Event ;";
        ResultSet res = doRequest(rqString);
        try {
            while(res.next()) {
                Event e = new Event();
                e.setId(res.getInt("id"));
                e.setDate(res.getDate("date"));
                e.setStart_hour(res.getDate("start_hour"));
                e.setEnd_hour(res.getDate("end_hour"));
                e.setLieu(res.getString("lieu"));
                e.setDescription(res.getString("description"));
                events.add(e);
            }
        }
        catch (SQLException | ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return events;
    }

    public ArrayList<Location> getAllLocations() {

        ArrayList<Location> locations = new ArrayList<Location>();

        String rqString = "Select * from Location ;";
        ResultSet res = doRequest(rqString);
        try {
            while(res.next()) {
                Location l = new Location();
                l.setId(res.getInt("id"));
                l.setNom(res.getString("nom"));
                l.setAdresse(res.getString("adresse"));
                l.setLatitude(res.getFloat("latitude"));
                l.setLongitude(res.getFloat("longitude"));
                locations.add(l);
            }
        }
        catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return locations;
    }

    public boolean userNameExists(String login) throws SQLException {

        String rqString = "Select * from User where login=?;";
        PreparedStatement preparedStatement = this.connect().prepareStatement(rqString);
        preparedStatement.setString(1, login);
        ResultSet res = preparedStatement.executeQuery();
        if(res.next()){
            return true;
        }

        return false;
    }

    public boolean createUser(String login, String password, String pseudo, String nom, String prenom, String birthdate) {
        Connection con = connect();

        try {
            String rqString = "INSERT INTO User (role, login, password, pseudo, nom, prenom, birthdate) VALUES ('USER',?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(rqString);
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, pseudo);
            preparedStatement.setString(4, nom);
            preparedStatement.setString(5, prenom);
            preparedStatement.setString(6, birthdate);

            if(preparedStatement.executeUpdate()>0){
                return true;
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean createEvent(int lieu, String date, String start, String end, String description) {
        Connection con = connect();

        try {
            String rqString = "INSERT INTO Event (lieu, date, start_hour, end_hour, description) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(rqString);
            preparedStatement.setInt(1, lieu);
            preparedStatement.setString(2, date);
            preparedStatement.setString(3, start);
            preparedStatement.setString(4, end);
            preparedStatement.setString(5, description);

            if(preparedStatement.executeUpdate()>0){
                return true;
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean eventExists(String description, int lieu) throws SQLException {

        String rqString = "Select * from Event where description=? AND lieu=?;";
        PreparedStatement preparedStatement = this.connect().prepareStatement(rqString);
        preparedStatement.setString(1, description);
        preparedStatement.setInt(2, lieu);
        ResultSet res = preparedStatement.executeQuery();
        if(res.next()){
            return true;
        }

        return false;
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

    public int doUpdate(String sql_string) {
        int results = 0;
        Connection con = connect();
        try {
            Statement stmt = con.createStatement();
            results = stmt.executeUpdate(sql_string);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return results;
    }

    public Connection connect() {

        Connection con = null;

        try {
            //Class.forName("org.mariadb.jdbc.Driver");
            Class.forName("com.mysql.cj.jdbc.Driver");
        }
        catch (ClassNotFoundException e) {
            arret("Impossible de charger le pilote jdbc");
        }

        affiche("connexion a la base de données");

        try {
            //String DBurl = "jdbc:mariadb://localhost:3306/covid";
            String DBurl = "jdbc:mysql://localhost:3306/covid";
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

