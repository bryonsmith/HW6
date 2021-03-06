
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

public class SearchQuery {
    
    private Connection conn;
    private ResultSet results;
    
    public SearchQuery(){
    
    Properties props = new Properties();  //MWC
    InputStream instr = getClass().getResourceAsStream("dbConn.properties");
    
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    String driver = props.getProperty("driver.name");
    String url = props.getProperty("server.name");
    String username = props.getProperty("user.name");
    String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    
    public void doSearch(String junkFoodName){
    
        try {
            String query = "SELECT * FROM junkFood WHERE UPPER (junkFoodName) LIKE ? ORDER BY junkFoodID DESC";
            
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + junkFoodName.toUpperCase() + "%");
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    
    public String getHTMLtable(){
        
        String table = "";
        
        table += "<table class = 'read'>";
        
        table += "<tr>";
        
        table += "<th> Junk Food ID </th>";
        table += "<th> Name of Junk Food </th>";
        table += "<th> Type of Junk Food </th>";
        table += "<th> Calories in Junk Food </th>";
        table += "<th> Rank &#40;1 to 10 is the best&#41; </th>";
        table += "<th>  </th>";
        table += "<th>  </th>";
        
        table += "</tr>";
        
        try {
            while(this.results.next()){
                
                JunkFood junkFood = new JunkFood();
                junkFood.setJunkFoodID(this.results.getInt("junkFoodID"));
                junkFood.setJunkFoodName(this.results.getString("junkFoodName"));
                junkFood.setJunkFoodType(this.results.getString("junkFoodType"));
                junkFood.setCalories(this.results.getInt("calories"));
                junkFood.setJunkFoodRank(this.results.getInt("JunkFoodRank"));
                
                table += "<tr>";
                table += "<td>";
                table += junkFood.getJunkFoodID();
                table += "</td>";
                
                table += "<td>";
                table += junkFood.getJunkFoodName();
                table += "</td>";
                
                table += "<td>";
                table += junkFood.getJunkFoodType();
                table += "</td>";
                
                table += "<td>";
                table += junkFood.getCalories();
                table += "</td>";
                
                table += "<td>";
                table += junkFood.getJunkFoodRank();
                table += "</td>";
                
                table += "<td>";
                table += "<a href=update?junkFoodID=" + junkFood.getJunkFoodID() + "> Update </a>";
                table += "</td>";
                
                table += "<td>";
                table += "<a href=delete?junkFoodID=" + junkFood.getJunkFoodID() + "> Delete </a>";
                table += "</td>";
                                
                table += "</tr>";
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        table += "</table>";
        
        return table;
    
        
    
    }
    
    
    
}
    
    
