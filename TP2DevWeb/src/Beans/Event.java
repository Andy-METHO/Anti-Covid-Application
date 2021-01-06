package Beans;

import java.sql.Date;

public class Event {
	
	private int id;
	private Date date;
    private String description;
    
	public Event(int id, Date date, String description) {
		super();
		this.id = id;
		this.date = date;
		this.description = description;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
    
    
}
