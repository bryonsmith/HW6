
package model;

public class JunkFood {
    
    private int junkFoodID;
    private String junkFoodName;
    private String junkFoodType;
    private int calories;
    private int junkFoodRank;
    
     public JunkFood() {
        this.junkFoodID = 0;
        this.junkFoodName = "";
        this.junkFoodType = "";
        this.calories = 0;
        this.junkFoodRank = 0;
    }

    public JunkFood(int junkFoodID, String junkFoodName, String junkFoodType, int calories, int junkFoodRank) {
        this.junkFoodID = junkFoodID;
        this.junkFoodName = junkFoodName;
        this.junkFoodType = junkFoodType;
        this.calories = calories;
        this.junkFoodRank = junkFoodRank;
    }

    public int getJunkFoodID() {
        return junkFoodID;
    }

    public void setJunkFoodID(int junkFoodID) {
        this.junkFoodID = junkFoodID;
    }

    public String getJunkFoodName() {
        return junkFoodName;
    }

    public void setJunkFoodName(String junkFoodName) {
        this.junkFoodName = junkFoodName;
    }

    public String getJunkFoodType() {
        return junkFoodType;
    }

    public void setJunkFoodType(String junkFoodType) {
        this.junkFoodType = junkFoodType;
    }

    public int getCalories() {
        return calories;
    }

    public void setCalories(int calories) {
        this.calories = calories;
    }

    public int getJunkFoodRank() {
        return junkFoodRank;
    }

    public void setJunkFoodRank(int junkFoodRank) {
        this.junkFoodRank = junkFoodRank;
    }

    @Override
    public String toString() {
        return "JunkFood{" + "junkFoodID=" + junkFoodID + ", junkFoodName=" + junkFoodName + ", junkFoodType=" + junkFoodType + ", calories=" + calories + ", junkFoodRank=" + junkFoodRank + '}';
    }
    
    
    
}
