
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.JunkFood;


public class UpdateQuery {
    
    private Connection conn;
    
    public UpdateQuery() {

    Properties props = new Properties();  //MWC
    InputStream instr = getClass().getResourceAsStream("dbConn.properties");
    
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    String driver = props.getProperty("driver.name");
    String url = props.getProperty("server.name");
    String username = props.getProperty("user.name");
    String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    
    public void doUpdate (JunkFood junkFood){
    
        try {
            String query = "UPDATE junkFood SET junkFoodName = ?, junkFoodType = ?, calories = ?, junkFoodRank = ? WHERE junkFoodID = ?";
            
            PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setString(1, junkFood.getJunkFoodName());
            ps.setString(2, junkFood.getJunkFoodType());
            ps.setInt(3, junkFood.getCalories());
            ps.setInt(4, junkFood.getJunkFoodRank());
            
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
       
}
   
