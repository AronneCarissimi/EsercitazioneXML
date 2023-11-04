 

import java.beans.XMLEncoder;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.beans.XMLDecoder;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.util.ArrayList;
//import java.util.List;

public class MainOne {

    public static void main(String[] args) {
        ArrayList<ModelOne> al=new ArrayList<ModelOne>();    
        ArrayList<ModelOne> alr=new ArrayList<ModelOne>();    
        ModelOne m1=new ModelOne("aaa",new Model(11,"a"));
        ModelOne m2=new ModelOne("bbn",new Model(12,"b"));
        ModelOne m3=new ModelOne("ccc",new Model(13,"c"));
        al.add(m1);
        al.add(m2);
        al.add(m3);
        //scrive un oggetto in formato XML
        try {
            XMLEncoder e = new XMLEncoder(
                 new BufferedOutputStream(
                     new FileOutputStream("TestOne.xml")
                 )
            );
             e.writeObject(al);
             e.close();
        }
        catch (Exception e) {
            System.out.println("Errore");
        }
        //lettura da XML in oggetto
        try {
            XMLDecoder d = new XMLDecoder(
                new BufferedInputStream(
                    new FileInputStream("TestOne.xml")
                )
            );
             alr =(ArrayList<ModelOne>) d.readObject();
            d.close();
        }
        catch (Exception e) {
            System.out.println("errore");
        }
        //stampa Arraylist
        for(ModelOne str:alr)  
            System.out.println(str);  
         
        
    }
}
