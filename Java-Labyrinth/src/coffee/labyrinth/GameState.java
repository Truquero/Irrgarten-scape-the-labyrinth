/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package coffee.labyrinth;

/**
 *
 * @author actci
 */
public class GameState {
    private String labyrinth, players, monsters, log;
    private boolean winner;
    private int currentPlayer;
    
    public GameState(String labyrinth, String players, String monsters, String log,int currentPlayer, boolean winner){
        this.labyrinth=labyrinth;
        this.players=players;
        this.monsters=monsters;
        this.log=log;
        this.currentPlayer=currentPlayer;
        this.winner=winner;
    }
    public String getLabyrinth(){
        return labyrinth;
    }
    public String getPlayers(){
        return players;
    }
    public String getMonsters(){
        return monsters;
    }
    public String getLog(){
        return log;
    }
    public int getCurrentPlayer(){
        return currentPlayer;
    }
    public boolean getWinner(){
        return winner;
    }
}
