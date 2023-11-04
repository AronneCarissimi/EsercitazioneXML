 

import java.io.Serializable;
public class Model {
    protected int id;
    protected String name;
    //public static final long serialVersionUID = 40L;
    public Model() {
        id=0;
        name="";
    }
    public Model(int id, String name) {
        setId(id);
        setName(name);
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id=id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name=name;
    }
    public String toString() {
        return getName()+" "+getId();
    }
}
