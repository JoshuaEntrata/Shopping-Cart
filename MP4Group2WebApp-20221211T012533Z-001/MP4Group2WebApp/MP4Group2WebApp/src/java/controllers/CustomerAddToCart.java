package controllers;
import product.Game;
import model.AddToCartGame;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class CustomerAddToCart extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        if (session == null){
            response.sendRedirect("loginpage.jsp");
        }
        ArrayList cart = (ArrayList) session.getAttribute("gameList");
        int value = (Integer) session.getAttribute("total");
        
        String gameChoice1 = request.getParameter("choice1");
        int quantity1 = Integer.parseInt(request.getParameter("quantity1"));
        String item1 = request.getParameter("item1");
        
        String gameChoice2 = request.getParameter("choice2");
        int quantity2 = Integer.parseInt(request.getParameter("quantity2"));
        String item2 = request.getParameter("item2");
        
        String gameChoice3 = request.getParameter("choice3");
        int quantity3 = Integer.parseInt(request.getParameter("quantity3"));
        String item3 = request.getParameter("item3");
        
        String gameChoice4 = request.getParameter("choice4");
        int quantity4 = Integer.parseInt(request.getParameter("quantity4"));
        String item4 = request.getParameter("item4");
        
        String checkoutAction = request.getParameter("checkout");
        String logoutAction = request.getParameter("logout");
        String deleteAction = request.getParameter("delete");
        
        if (item1 != null){
            AddToCartGame details = new AddToCartGame();
            Game game = details.addToCart(gameChoice1, quantity1);
            cart.add(game);
            value = value + game.price;
            session.setAttribute("gameList", cart);
            session.setAttribute("total", value);
            response.sendRedirect("gameshop.jsp");
        } 
        
        else if (item2 != null) {
            AddToCartGame details = new AddToCartGame();
            Game game = details.addToCart(gameChoice2, quantity2);
            cart.add(game);
            value = value + game.price;
            session.setAttribute("gameList", cart);
            session.setAttribute("total", value);
            response.sendRedirect("gameshop.jsp");
            
        }
        
       else if (item3 != null) {
             AddToCartGame details = new AddToCartGame();
             Game game = details.addToCart(gameChoice3, quantity3);
            cart.add(game);
            value = value + game.price;
            session.setAttribute("gameList", cart);
            session.setAttribute("total", value);
            response.sendRedirect("gameshop.jsp");
            
        }
       
        else if (item4 != null) {
            AddToCartGame details = new AddToCartGame();
            Game game = details.addToCart(gameChoice4, quantity4);
            cart.add(game);
            value = value + game.price;
            session.setAttribute("gameList", cart);
            session.setAttribute("total", value);
            response.sendRedirect("gameshop.jsp");
        }
        
        else if (checkoutAction != null) {
            if (cart.isEmpty()) 
                response.sendRedirect("checkoutError.jsp");
            else {
            
            session.setAttribute("checkout", checkoutAction);
            response.sendRedirect("cartcheckout.jsp");
            }
        }
        
        else if (logoutAction != null) {
            session.removeAttribute("user");
            session.invalidate();
            response.sendRedirect("catalogue.jsp");
        }
        
        else if (deleteAction != null) {
            AddToCartGame details = new AddToCartGame();
            value = details.RemoveFromCart(cart, deleteAction, value);
            
            session.setAttribute("total", value);
            cart.remove(Integer.parseInt(deleteAction));
            response.sendRedirect("gameshop.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}