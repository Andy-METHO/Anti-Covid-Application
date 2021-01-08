package Beans;

import java.sql.Time;

public class Notif {
    private int id;
    private User receiver;
    private User sender;
    private String notif_type;
    private Time time_sent;
    private boolean is_read;

    public Notif(int id, User receiver, User sender, String notif_type, Time time_sent, boolean is_read) {
        this.id = id;
        this.receiver = receiver;
        this.sender = sender;
        this.notif_type = notif_type;
        this.time_sent = time_sent;
        this.is_read = is_read;
    }

    public Notif() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getReceiver() {
        return receiver;
    }

    public void setReceiver(User receiver) {
        this.receiver = receiver;
    }

    public User getSender() {
        return sender;
    }

    public void setSender(User sender) {
        this.sender = sender;
    }

    public String getNotif_type() {
        return notif_type;
    }

    public void setNotif_type(String notif_type) {
        this.notif_type = notif_type;
    }

    public Time getTime_sent() {
        return time_sent;
    }

    public void setTime_sent(Time time_sent) {
        this.time_sent = time_sent;
    }

    public boolean isIs_read() {
        return is_read;
    }

    public void setIs_read(boolean is_read) {
        this.is_read = is_read;
    }
}
