package net.roseindia.dao;

import net.roseindia.model.*;

public interface LoginDAO{    
       public boolean checkLogin(String userName, String userPassword);
}