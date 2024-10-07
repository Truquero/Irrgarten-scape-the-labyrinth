/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package coffee.labyrinth;
/**
 *
 * @author actci
 */
public class JavaLabyrinth {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Dice dado=new Dice();
        Weapon arma=new Weapon(3,5);
        Shield escudo=new Shield(4,2);
        GameState estado= new GameState("Lab","Manolo","Paco","log",5,true);
        
        System.out.println(arma.toString());
        System.out.println(arma.attack());
        System.out.println(arma.discard());
        System.out.println();
        System.out.println(escudo.toString());
        System.out.println(escudo.protect());
        System.out.println(escudo.discard());
        System.out.println();
        for(int i=0;i<100;i++){
            System.out.println("Interacciones:" + (i+1));
            System.out.println(dado.discardElement(3));
            System.out.println(dado.heathReward());
            System.out.println(dado.intensity(3));
            System.out.println(dado.randomIntelligence());
            System.out.println(dado.randomPos(8));
            System.out.println(dado.randomStrength());
            System.out.println(dado.resurrectPlayer());
            System.out.println(dado.shieldPower());
            System.out.println(dado.shieldsReward());
            System.out.println(dado.usuesLeft());
            System.out.println(dado.weaponPower());
            System.out.println(dado.weaponsReward());
            System.out.println(dado.whoStarts(6)); 
        }
        System.out.println();
        System.out.println(estado.getCurrentPlayer());
        System.out.println(estado.getLabyrinth());
        System.out.println(estado.getLog());
        System.out.println(estado.getMonsters());
        System.out.println(estado.getPlayers());
        System.out.println(estado.getWinner());
                
        
        
    }
    
}
