import java.io.*;
public class ModelOne {
    protected String cod;
    protected Model model;
    //public static final long serialVersionUID = 42L;
    public ModelOne() {
        cod="ModelOne";
        model=new Model(1,"test");
    }
    public ModelOne(String cod,Model m) {
        this.cod=cod;
        model=m;
    }
    
    public void setModel(Model m){
         model=m;
    }
    public void setCod(String cod){
            this.cod=cod;
    }
    public String getCod() {
        return cod;
    }
    public Model getModel() {
        return model;
    }
    public String toString(){
            return cod+" "+model;
    }
}
