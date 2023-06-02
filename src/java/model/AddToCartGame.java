package model;
import product.Game;
import java.util.*;
public class AddToCartGame {
    public Game addToCart(String order, int quantity){
        Game bundle = new Game();
        switch (order) {
            case "game1":
            {
                String gameName = "God of War";
                int price = 2500;
                int totalCost = (price * quantity);
                bundle = new Game(gameName, totalCost, quantity);
                return bundle;
            }
            case "game2":
            {
                String gameName = "GTA V";
                int price = 3500;
                int totalCost = (price * quantity);
                bundle = new Game(gameName, totalCost, quantity);
                return bundle;
            }
            case "game3":
            {
                String gameName = "Cyberpunk 2077";
                int price = 5000;
                int totalCost = (price * quantity);
                bundle = new Game(gameName, totalCost, quantity);
                return bundle;
            }
            case "game4":
            {
                String gameName = "NBA 2K23";
                int price = 1000;
                int totalCost = (price * quantity);
                bundle = new Game(gameName, totalCost, quantity);
                return bundle;
            }
            default:
                break;
        }
        return bundle;
    }
    
    public int RemoveFromCart(ArrayList<Game> cart, String deletionNumber, int value){
        Game delete = (Game) cart.get(Integer.parseInt(deletionNumber));
        value = value - delete.price;
        return value;
    }
}
