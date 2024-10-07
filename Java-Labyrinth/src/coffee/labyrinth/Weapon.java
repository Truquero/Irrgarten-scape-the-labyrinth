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
public class Weapon {
    private float power;
    private int uses;
    
    public Weapon(float power,int uses){
        this.power=power;
        this.uses=uses;
    }
    
    public float attack(){
        if(uses>0){
            return power;
        }else{
            return 0;
        }
    }
    
    public String toString(){
        return "W[" + power + "," + uses + "]";
    }
    
    public boolean discard(){
        Dice d =new Dice();
        return d.discardElement(uses);
    }
}
