package Beans;

public class Location {

	private int id;
	private String nom;
	private String adresse;
    private float latitude;
    private float longitude;

	public Location(int id, String nom, String adresse, float latitude, float longitude) {
		this.id = id;
		this.nom = nom;
		this.adresse = adresse;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public Location() {
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public float getLatitude() {
		return latitude;
	}
	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}
	public float getLongitude() {
		return longitude;
	}
	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}


}
