public class newaddremove {
    
    public List<String> slist {get;set;}
    public String container {get;set;}
    
    public newaddremove(){
        slist = new List<String>();
    }
    
    public void addrec(){
        slist.add(container);
        container = '';
    }
    
    public void removerec(){
        slist.remove(slist.size()-1);
    }
}