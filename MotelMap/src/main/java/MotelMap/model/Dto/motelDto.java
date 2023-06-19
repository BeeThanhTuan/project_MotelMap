package MotelMap.model.Dto;

public class motelDto {

	private int id;
	private double latitude;
	private double longitude;
	private String image;
	private String nameInnkeepers;
	private String description;
	private String address;
	private String phone;
	private double price;
	
	
	
	
	@Override
	public String toString() {
		return "motelDto [id=" + id + ", latitude=" + latitude + ", longitude=" + longitude + ", image=" + image
				+ ", nameInnkeepers=" + nameInnkeepers + ", description=" + description + ", address=" + address
				+ ", phone=" + phone + ", price=" + price + "]";
	}

	public motelDto() {
		//super();
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getNameInnkeepers() {
		return nameInnkeepers;
	}
	public void setNameInnkeepers(String nameInnkeepers) {
		this.nameInnkeepers = nameInnkeepers;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	
	
	
	
}
