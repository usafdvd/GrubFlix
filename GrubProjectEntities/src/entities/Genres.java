package entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="GENRES")
public class Genres {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    String genre_id;
    @OneToMany(mappedBy="genre")
    private List<DVDs> genre_name;
    
    
    public String getGenre_id() {
        return genre_id;
    }
    public void setGenre_id(String genre_id) {
        this.genre_id = genre_id;
    }
    public List<DVDs> getGenre_name() {
        return genre_name;
    }
    public void setGenre_name(List<DVDs> genre_name) {
        this.genre_name = genre_name;
    }
    
}
