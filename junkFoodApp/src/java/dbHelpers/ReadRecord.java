
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.JunkFood;


public class ReadRecord {
    
    private Connection conn;
    private ResultSet results;
    
    private JunkFood junkFood = new JunkFood();
    private int junkFoodID;
  
    public ReadRecord (int junkFoodID) {
    
    Properties props = new Properties();  //MWC
    InputStream instr = getClass().getResourceAsStream("dbConn.properties");
    
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    String driver = props.getProperty("driver.name");
    String url = props.getProperty("server.name");
    String username = props.getProperty("user.name");
    String passwd = props.getProperty("user.password");
    
    this.junkFoodID = junkFoodID;
    
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }        
    
    public void doRead() {

        try {
            //set up a string to hold our query
            String query = "SELECT * FROM junkFood WHERE junkFoodID = ?";
            
            //create a preparedstatement using our query string
            PreparedStatement ps = conn.prepareStatement(query);
            
            //fill in the preparedstatement
            ps.setInt(1, junkFoodID);
            
            //execute the query
            this.results = ps.executeQuery();
            
            this.results.next();
            
            junkFood.setJunkFoodID(this.results.getInt("junkFoodID"));
            junkFood.setJunkFoodName(this.results.getString("junkFoodName"));
            junkFood.setJunkFoodType(this.results.getString("junkFoodType"));
            junkFood.setCalories(this.results.getInt("calories"));
            junkFood.setJunkFoodRank(this.results.getInt("rank"));
            
        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    
}
    
    public JunkFood getJunkFood(){
    
        return this.junkFood;
    
    }
    
}
    
