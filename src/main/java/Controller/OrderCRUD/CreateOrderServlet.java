package Controller.OrderCRUD;

import Model.Order;
import Model.Product;
import Model.User;
import services.OrderService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CreateOrderServlet",urlPatterns = "/createOrder")
public class CreateOrderServlet extends HttpServlet {
    OrderService orderService = new OrderService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        createOrder(request,response);

    }

    private void createOrder(HttpServletRequest request, HttpServletResponse response){
        HttpSession cartSession = request.getSession();
        ArrayList<Product> productCart = (ArrayList<Product>) cartSession.getAttribute("productCart");

        HttpSession userSession = request.getSession();
        User user = (User) userSession.getAttribute("user");


        int total = 0;
        for (Product product: productCart) {
            total += product.getPrice();
        }
        int userId = user.getId();

        Order order = new Order(userId,total);
        OrderService.addOrder(order);

        int lastInsertedOrderId = orderService.searchOrderId(user.getId());

        RequestDispatcher dispatcher = request.getRequestDispatcher("/createOrderDetails");
        request.setAttribute("lastInsertedOrderId", lastInsertedOrderId);

        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
