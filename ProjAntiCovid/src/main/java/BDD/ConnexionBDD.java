package BDD;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;

import Beans.Event;
import Beans.Location;
import Beans.Notif;
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

    public Location getLocation(int id) throws SQLException {

        Location lieu = null;

        String rqString = "Select * from Location where id=?";
        PreparedStatement preparedStatement = this.connect().prepareStatement(rqString);
        preparedStatement.setInt(1, id);
        ResultSet res = preparedStatement.executeQuery();
        int i = 0;
        try {
            while(res.next()) {
                if(i==0) {
                    lieu = new Location();
                    lieu.setId(res.getInt("id"));
                    lieu.setNom(res.getString("nom"));
                    lieu.setAdresse(res.getString("adresse"));
                    lieu.setLatitude(res.getFloat("latitude"));
                    lieu.setLongitude(res.getFloat("longitude"));
                }
                else {
                    i++;
                    arret("Plus d'un lieu avec le même id ??");
                }

            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return lieu;
    }

    public ArrayList<Notif> getUserNotifications(int id) throws SQLException {

        ArrayList<Notif> userNotifs = new ArrayList<>();

        String rqString = "Select * from Notifs where receiver_id=?;";
        PreparedStatement preparedStatement = this.connect().prepareStatement(rqString);
        preparedStatement.setInt(1, id);
        ResultSet res = preparedStatement.executeQuery();
        int i = 0;
        try {
            while(res.next()) {
                if(i==0) {
                    Notif n = new Notif();
                    n.setId(res.getInt("id"));
                    n.setReceiver(getUser(res.getInt("receiver_id")));
                    n.setSender(getUser(res.getInt("sender_id")));
                    n.setNotif_type(res.getString("notif_type"));
                    n.setTime_sent(res.getTime("time_sent"));
                    n.setIs_read(res.getBoolean("is_read"));

                    userNotifs.add(n);
                }
                else {
                    i++;
                    arret("Plus d'un utilisateur ayant le meme login ???");
                }

            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return userNotifs;
    }

    public ArrayList<Notif> getUnreadNotifications(int id) throws SQLException {

        ArrayList<Notif> userNotifs = new ArrayList<>();

        String rqString = "Select * from Notifs where receiver_id=? AND is_read=0;";
        PreparedStatement preparedStatement = this.connect().prepareStatement(rqString);
        preparedStatement.setInt(1, id);
        ResultSet res = preparedStatement.executeQuery();
        int i = 0;
        try {
            while(res.next()) {
                if(i==0) {
                    Notif n = new Notif();
                    n.setId(res.getInt("id"));
                    n.setReceiver(getUser(res.getInt("receiver_id")));
                    n.setSender(getUser(res.getInt("sender_id")));
                    n.setNotif_type(res.getString("notif_type"));
                    n.setTime_sent(res.getTime("time_sent"));
                    n.setIs_read(res.getBoolean("is_read"));

                    userNotifs.add(n);
                }
                else {
                    i++;
                    arret("Plus d'un utilisateur ayant le meme login ???");
                }

            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return userNotifs;
    }

    public ArrayList<User> getAllUsers() {

        ArrayList<User> users = new ArrayList<User>();

        String rqString = "Select * from User ;";
        ResultSet res = doRequest(rqString);
        try {
            while(res.next()) {
                User u = new User();
                u.setId(res.getInt("id"));
                u.setPseudo(res.getString("pseudo"));
                u.setLogin(res.getString("login"));
                u.setPassword(res.getString("password"));
                u.setNom(res.getString("nom"));
                u.setPrenom(res.getString("prenom"));
                u.setBirthdate(res.getString("birthdate"));
                u.setRole(res.getString("role"));
                u.setImage(res.getString("image"));
                u.setStatut(res.getInt("statut"));
                users.add(u);
            }
        }
        catch (SQLException | ParseException e) {
            e.printStackTrace();
        }

        return users;
    }

    public ArrayList<Event> getAllEvent() {

        ArrayList<Event> events = new ArrayList<Event>();

        String rqString = "Select * from Event";
        ResultSet res = doRequest(rqString);
        try {
            while(res.next()) {
                Event e = new Event();
                e.setId(res.getInt("id"));
                e.setDate(res.getDate("date"));
                e.setStart_hour(res.getDate("start_hour"));
                e.setEnd_hour(res.getDate("end_hour"));
                e.setLieu(getLocation(res.getInt("lieu")));
                e.setDescription(res.getString("description"));
                e.setUser(getUser(res.getInt("user_id")));
                events.add(e);
            }
        }
        catch (SQLException | ParseException e) {
            e.printStackTrace();
        }

        return events;
    }

    public ArrayList<Event> getUserEvents(int id) {

        ArrayList<Event> events = new ArrayList<Event>();

        String rqString = "Select * from Event WHERE user_id="+id;
        ResultSet res = doRequest(rqString);
        try {
            while(res.next()) {
                Event e = new Event();
                e.setId(res.getInt("id"));
                e.setDate(res.getDate("date"));
                e.setStart_hour(res.getDate("start_hour"));
                e.setEnd_hour(res.getDate("end_hour"));
                e.setLieu(getLocation(res.getInt("lieu")));
                e.setDescription(res.getString("description"));
                e.setUser(getUser(res.getInt("user_id")));
                events.add(e);
            }
        }
        catch (SQLException | ParseException e) {
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

    public boolean createEvent(int lieu, String date, String start, String end, String description, int user_id) {
        Connection con = connect();

        try {
            String rqString = "INSERT INTO Event (lieu, date, start_hour, end_hour, description, user_id) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(rqString);
            preparedStatement.setInt(1, lieu);
            preparedStatement.setString(2, date);
            preparedStatement.setString(3, start);
            preparedStatement.setString(4, end);
            preparedStatement.setString(5, description);
            preparedStatement.setInt(6, user_id);

            if(preparedStatement.executeUpdate()>0){
                return true;
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean createNotif(int receiver_id, int sender_id, String notif_type) {
        Connection con = connect();

        try {
            String rqString = "INSERT INTO Notifs (receiver_id, sender_id, notif_type) VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(rqString);
            preparedStatement.setInt(1, receiver_id);
            preparedStatement.setInt(2, sender_id);
            preparedStatement.setString(3, notif_type);

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

    public boolean createLocation(String nom, String adresse, float latitude, float longitude) {
        Connection con = connect();

        try {
            String rqString = "INSERT INTO Location (nom, adresse, latitude, longitude) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(rqString);
            preparedStatement.setString(1, nom);
            preparedStatement.setString(2, adresse);
            preparedStatement.setFloat(3, latitude);
            preparedStatement.setFloat(4, longitude);

            if(preparedStatement.executeUpdate()>0){
                return true;
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean createLocation(String nom, String adresse) {
        Connection con = connect();

        try {
            String rqString = "INSERT INTO Location (nom, adresse) VALUES (?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(rqString);
            preparedStatement.setString(1, nom);
            preparedStatement.setString(2, adresse);

            if(preparedStatement.executeUpdate()>0){
                return true;
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean locationExists(String nom, String adresse) throws SQLException {

        String rqString = "Select * from Location where nom=? AND adresse=?;";
        PreparedStatement preparedStatement = this.connect().prepareStatement(rqString);
        preparedStatement.setString(1, nom);
        preparedStatement.setString(2, adresse);
        ResultSet res = preparedStatement.executeQuery();
        if(res.next()){
            return true;
        }

        return false;
    }

    public ArrayList<Integer> notifContacts(int id) {

        LocalDate date = LocalDate.now().minusDays(10);
        ArrayList<Integer> users = new ArrayList<>();
        ArrayList<Integer> lieux = new ArrayList<>();
        ArrayList<String> start_hours = new ArrayList<String>();
        ArrayList<String> end_hours = new ArrayList<>();
        Date tendays = Date.valueOf(date);


        String sql_lieu = "SELECT lieu, start_hour, end_hour FROM Event WHERE user_id=" + id +" AND date>="+tendays;
        ResultSet res = doRequest(sql_lieu);
        try {
            int lieu;
            String start_hour = "";
            String end_hour = "";
            while (res.next()) {
                lieu = res.getInt("event.lieu");
                start_hour = res.getString("event.start_hour");
                end_hour = res.getString("event.end_hour");
                lieux.add(lieu);
                start_hours.add(start_hour);
                end_hours.add(end_hour);
                System.out.println("lieu = "+lieu);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        if(!lieux.isEmpty() && !start_hours.isEmpty() && !end_hours.isEmpty()){
            for(int i = 0; i<lieux.size(); i++){
                String sql_user = "SELECT user_id FROM Event WHERE user_id !="+ id +" AND lieu="+ lieux.get(i) +" AND date>="+tendays+
                        " AND (( start_hour<= TIME '"+ start_hours.get(i) +"' AND end_hour>= TIME '"+start_hours.get(i)+"') " +
                        "OR ( start_hour<= TIME '"+ end_hours.get(i) +"' AND end_hour>= TIME '"+ end_hours.get(i) +"'))";
                System.out.println(sql_user);
                res = doRequest(sql_user);
                try {
                    while (res.next()) {
                        users.add(res.getInt("event.user_id"));;
                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }


        return users;
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

