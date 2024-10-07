/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coffee.labyrinth;
import java.util.Random;

/**
 *
 * @author albertoct
 */
public class Dice {
    private static int MAX_USES = 5;
    private static float MAX_INTELLIGENCE = 10.0f;
    private static float MAX_STRENGTH = 10f;
    private static float RESURRECT_PROB = 0.3f;
    private static int WEAPONS_REWARD = 2;
    private static int SHIELDS_REWARD = 3;
    private static int HEALTH_REWARD= 5;
    private static int MAX_SHIELD = 2;
    private static int MAX_ATTACK = 2;
    
    static Random generator=new Random();
    
    public int randomPos(int max){
        return generator.nextInt(max);
    }
    public int whoStarts(int nplayers){
        return generator.nextInt(nplayers+1);
    }
    public float randomIntelligence(){
        return generator.nextFloat(MAX_INTELLIGENCE);
    }
    public float randomStrength(){
        return generator.nextFloat(MAX_STRENGTH);
    }
    public boolean resurrectPlayer(){
        if (generator.nextFloat(RESURRECT_PROB) < RESURRECT_PROB)
            return true;
        else
            return false;
        
    }
    public int weaponsReward(){
        return generator.nextInt(WEAPONS_REWARD+1);
    }
    public int shieldsReward(){
        return generator.nextInt(SHIELDS_REWARD+1);
    }
    public int heathReward(){
        return generator.nextInt(HEALTH_REWARD+1);
    }
    public float weaponPower(){
        return generator.nextFloat(MAX_ATTACK);
    }
    public float shieldPower(){
        return generator.nextFloat(MAX_SHIELD);
    }
    public int usuesLeft(){
        return generator.nextInt(MAX_USES);
    }
    public float intensity(float competence){
        return generator.nextFloat(competence);
    }
    public boolean discardElement(int usesLeft){
        if (usesLeft==0)
            return true;
        if(usesLeft/MAX_USES<generator.nextFloat(1))
            return true;
        else
            return false;
    }
}
