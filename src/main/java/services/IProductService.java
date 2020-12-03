package services;

import Model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();
    void save(Product product);
    void edit(int id, Product product);
    void remove(int id);
    Product findById(int id);

}
