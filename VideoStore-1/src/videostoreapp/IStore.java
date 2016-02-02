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
public interface IStore {

    public boolean isEmpty();

    public int size();

    public Object frontElement();

    public void enqueue(Object element);

    public Object dequeue();

    public String display();
}
