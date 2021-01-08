package Beans;

import java.sql.Time;

public class Notif {
    private int id;
    private int receiver_id;
    private int sender_id;
    private String notif_type;
    private Time time_sent;
    private boolean is_read;

    public Notif(int id, int receiver_id, int sender_id, String notif_type, Time time_sent, boolean is_read) {
        this.id = id;
        this.receiver_id = receiver_id;
        this.sender_id = sender_id;
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

    public int getReceiver_id() {
        return receiver_id;
    }

    public void setReceiver_id(int receiver_id) {
        this.receiver_id = receiver_id;
    }

    public int getSender_id() {
        return sender_id;
    }

    public void setSender_id(int sender_id) {
        this.sender_id = sender_id;
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
