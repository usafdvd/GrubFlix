package entities;

import java.io.Serializable;

@SuppressWarnings("serial")
public class OrderDetails_PK implements Serializable {
	private int dvds;
	private int dvdId;
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + dvdId;
		result = prime * result + dvds;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OrderDetails_PK other = (OrderDetails_PK) obj;
		if (dvdId != other.dvdId)
			return false;
		if (dvds != other.dvds)
			return false;
		return true;
	}

	
}
