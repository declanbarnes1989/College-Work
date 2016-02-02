/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package videostoreapp;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Declan Barnes & Alan Sullivan
 */
public class VideoGUITest {
    
    public VideoGUITest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of main method, of class VideoGUI.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        VideoGUI.main(args);
        // TODO review the generated test code and remove the default call to fail.
        
        
        IStore q;
        q= new myQueue();
        q.enqueue("Declan");//comment out the enqueue to have nothing in the queue and return a true test.
        if(q.isEmpty()){
        assertTrue(q.isEmpty());
        }
        else{
            
            throw new RuntimeException("Test Failed, Queue is not empty!");
        }
    }
    
}
