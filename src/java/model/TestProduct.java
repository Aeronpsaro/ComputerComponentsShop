package model;

import java.util.Objects;


public class TestProduct implements Product {

    @Override
    public double getPrice() {
        return 10;
    }

    @Override
    public String getName() {
        return "Caja";
    }

    @Override
    public String getImage() {
        return "https://m.media-amazon.com/images/I/61eIVXuxyAS._AC_SY355_.jpg";
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(getPrice(), getName(), getImage());
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final TestProduct other = (TestProduct) obj;
        return true;
    }

    public void setId(int id) {
        return;
    }

    public void setAmmount(int ammount) {
        return;
    }
}
