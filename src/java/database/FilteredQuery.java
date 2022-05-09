package database;

import java.util.List;
import model.Product;

public interface FilteredQuery {
    public void setQueryString(String query);
    public void addMinPriceFilter(double minPrice);
    public void addMaxPriceFilter(double maxPrice);
    public void addTypeFilter(String type);
    public void addStockFilter(boolean stock);
    public List<Product> getQuery();
}
