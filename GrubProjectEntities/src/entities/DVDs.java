package entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "DVDS")
public class DVDs {
	@Id
	@OneToMany(mappedBy="dvds")
	int id;
	@Column(name = "dvd_title")
	String dvdTitle;
	String status;
	@Column(name = "genreid")
	String genreName;
	@Temporal(TemporalType.DATE)
	@Column(name = "DVD_releasedate")
	Date releaseDate;

	public DVDs() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDvdTitle() {
		return dvdTitle;
	}

	public void setDvdTitle(String dvdTitle) {
		this.dvdTitle = dvdTitle;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getGenreName() {
		return genreName;
	}

	public void setGenreName(String genreName) {
		this.genreName = genreName;
	}

	public Date getRelease_date() {
		return releaseDate;
	}

	public void setRelease_date(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

}
