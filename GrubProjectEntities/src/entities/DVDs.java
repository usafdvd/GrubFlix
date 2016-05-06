package entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "DVDS")
public class DVDs implements Serializable {
	@Id
	int id;
	@Column(name = "dvd_title")
	String dvdTitle;
	// String status;
	@Column(name = "genreid")
	String genreName;
	// @Temporal(TemporalType.DATE)
	// @Column(name = "DVD_releasedate")
	// Date releaseDate;
	String rating;
	String posterURL;

	@ManyToMany(fetch = FetchType.EAGER, cascade = { CascadeType.PERSIST, CascadeType.REMOVE })
	@JoinTable(name = "ORDER_DETAILS", joinColumns = @JoinColumn(name = "DVDID"), inverseJoinColumns = @JoinColumn(name = "ORDERID"))
	private List<CustomerOrder> customerDVDOrders;

	public DVDs() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPosterURL() {
		return posterURL;
	}

	public void setPosterURL(String posterURL) {
		this.posterURL = posterURL;
	}

	public String getDvdTitle() {
		return dvdTitle;
	}

	public void setDvdTitle(String dvdTitle) {
		this.dvdTitle = dvdTitle;
	}

	// public String getStatus() {
	// return status;
	// }
	//
	// public void setStatus(String status) {
	// this.status = status;
	// }

	public String getGenreName() {
		return genreName;
	}

	public void setGenreName(String genreName) {
		this.genreName = genreName;
	}

	// public Date getReleaseDate() {
	// return releaseDate;
	// }

	public List<CustomerOrder> getCustomerDVDOrders() {
		return customerDVDOrders;
	}

	// public void setReleaseDate(Date releaseDate) {
	// this.releaseDate = releaseDate;
	// }

	public void setCustomerDVDOrders(List<CustomerOrder> customerDVDOrders) {
		this.customerDVDOrders = customerDVDOrders;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "DVDs [id=" + id + ", dvdTitle=" + dvdTitle + ", genreName=" + genreName + ", rating=" + rating
				+ ", customerDVDOrders=" + customerDVDOrders + "]";
	}

}
