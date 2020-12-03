package services;

import Model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {
    private static Map<Integer, Product> products;

    static{
        products = new HashMap<>();
//        products.put(1, new Product(1, "Ip5", "iphone", 1, 2,"https://cdn.tgdd.vn/Files/2020/03/28/1245108/3_600x600.jpg"));
//        products.put(2, new Product(2, "IpX", "iphone", 2,));
//        products.put(3, new Product(3, "5530", "nokia", 20));
//        products.put(4, new Product(4, "Galaxy", "Samsung", 20));
//        products.put(5, new Product(5, "note10", "Xiaomi", 20));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    };

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public void edit(int id,Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }


}
