package Controller.OrderDetailsCRUD;

import Model.Order;
import Model.OrderDetails;
import Model.Product;
import services.OrderDetailsServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CreateOrderDetailsServlet",urlPatterns = "/createOrderDetails")
public class CreateOrderDetailsServlet extends HttpServlet {
    OrderDetailsServices orderDetailsServices = new OrderDetailsServices();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        createOrderDetails(request,response);

    }

    private void createOrderDetails(HttpServletRequest request, HttpServletResponse response){
        HttpSession cartSession = request.getSession();
        ArrayList<Product> productCart = (ArrayList<Product>) cartSession.getAttribute("productCart");

        for (Product product: productCart) {
            int OrderId = (int) request.getAttribute("lastInsertedOrderId");
            int ProductId = product.getId();
            int price = product.getPrice();
            int quantity = 1;
//            String shipAddress = request.getParameter("shipAddress");
            OrderDetails orderDetails1 = new OrderDetails(OrderId,ProductId,price,quantity);
            orderDetailsServices.addOrderDetails(orderDetails1);
            try {
                request.getRequestDispatcher("/products").forward(request,response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }
}
