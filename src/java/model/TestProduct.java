package model;

public class TestProduct implements Product {

    @Override
    public float getPrice() {
        return 10;
    }

    @Override
    public String getName() {
        return "Caja";
    }

    @Override
    public String getImageURL() {
        return "https://m.media-amazon.com/images/I/61eIVXuxyAS._AC_SY355_.jpg";
    }
    
    
}
