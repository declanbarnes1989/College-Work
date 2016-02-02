/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package videostoreapp;

/**
 *
 * @author Declan Barnes & Alan Sullivan
 */
public class VideoStoreApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
         // TODO code application logic here

        //Create a new Instance of the myQueue class.
        IStore q = new myQueue();

        //set GUI to visible
        VideoGUI gui = new VideoGUI();
        gui.setVisible(true);
    }
    
}
