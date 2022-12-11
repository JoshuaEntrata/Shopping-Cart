package model;
import java.util.*;
public class UserAccounts {


    public static Boolean getVerification(String u, String p){
        Map<String, String> Data = UserAccounts.getData();
        Boolean flag1=false, flag2=false;
        
        for(String username : Data.keySet())
            if (u.equals(username)){
                flag1=true;
                break;}
        
        if(flag1)
            for(String pass : Data.values())
                if(p.equals(pass)){
                    flag2=true;
                    break;} 
        
        return flag2;
    }
    
    static Map getData() {
        Map<String,String> userpass = new HashMap();
        
        userpass.put("user1","password1");
        userpass.put("user2","password2");
        userpass.put("user3","password3");
        userpass.put("user4","password4");
        userpass.put("user5","password5");
        
        return userpass;
    }
}


