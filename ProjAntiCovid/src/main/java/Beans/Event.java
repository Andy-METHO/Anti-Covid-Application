package Beans;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Event {
	
	private int id;
	private Date date;
	private Date start_hour;
	private Date end_hour;
	private String lieu;
    private String description;
    private int user_id;

	public Event(int id, Date date, Date start_hour, Date end_hour, String lieu, String description, int user_id) {
		super();
		this.id = id;
		this.date = date;
		this.start_hour = start_hour;
		this.end_hour = end_hour;
		this.lieu = lieu;
		this.description = description;
		this.user_id = user_id;
	}
    

    public Event() {
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
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
	public String getLieu() {
		return lieu;
	}
	public void setLieu(String lieu) {
		this.lieu = lieu;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
    
    
}
