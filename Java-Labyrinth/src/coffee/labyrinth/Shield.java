/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coffee.labyrinth;

/**
 *
 * @author albertoct
 */
public class Shield {
    private float protection;
    private int uses;
    
    public Shield(float protection,int uses){
        this.protection=protection;
        this.uses=uses;
    }
    
    public float protect(){
        if(uses>0){
            return protection;
        }else{
            return 0;
        }
    }
    
    public String toString(){
        return "W[" + protection + "," + uses + "]";
    }
    
    public boolean discard(){
        Dice d =new Dice();
        return d.discardElement(uses);
    }
}
