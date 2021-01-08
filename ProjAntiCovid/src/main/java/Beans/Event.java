package Beans;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Event {
	
	private int id;
	private Date date;
	private Date start_hour;
	private Date end_hour;
	private Location lieu;
    private String description;
    private User user;

	public Event(int id, Date date, Date start_hour, Date end_hour, Location lieu, String description, User user) {
		super();
		this.id = id;
		this.date = date;
		this.start_hour = start_hour;
		this.end_hour = end_hour;
		this.lieu = lieu;
		this.description = description;
		this.user = user;
	}
    

    public Event() {
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDate() {
		return new SimpleDateFormat("dd/MM/yyyy").format(date);
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getStart_hour() {
		return new SimpleDateFormat("HH:mm").format(start_hour);
	}
	public void setStart_hour(Date start_hour) throws ParseException {
		this.start_hour = start_hour;
	}
	public String getEnd_hour() {
		return new SimpleDateFormat("HH:mm").format(end_hour);
	}
	public void setEnd_hour(Date end_hour) {
		this.end_hour = end_hour;
	}
	public Location getLieu() {
		return lieu;
	}
	public void setLieu(Location lieu) {
		this.lieu = lieu;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
    
    
}
