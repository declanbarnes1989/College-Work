/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package videostoreapp;

import java.util.ArrayList;

/**
 *
 * @author Declan Barnes & Alan Sullivan
 */
public class myQueue implements IStore {
       //create Arraylist to store Queue information
    ArrayList<String> theQueue;

    //Constructor
    public myQueue() {
        //Initalise the ArrayList
        theQueue = new ArrayList<String>();
    }

    //This Method will return a true value if the Queue is Empty.
    public boolean isEmpty() {
        return theQueue.isEmpty();
    }

    //Return an int value of the number of items stored in the Queue
    public int size() {

        return theQueue.size();
    }

    //Return the item in the front of the Queue.
    public Object frontElement() {

        return theQueue.get(0);
    }

    //Add an item to the Queue
    public void enqueue(Object element) {

        theQueue.add((String) element);
    }

    //Whatever is at position 0 ...remove them.
    public Object dequeue() {

        return theQueue.remove(0);
    }

    //Display 
    public String display() {

        String tmp = "";

        for (int i = 0; i < theQueue.size(); i++) {
            
            tmp = tmp + theQueue.get(i) + "\n";
        }
        return tmp;
    }
}

