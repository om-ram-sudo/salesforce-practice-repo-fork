public class DemoSobject {
	
    public void demoMethod(){
        List<String> strlist1 = new List<String>();
        List<String> strlist2 = new List<String>();
        strlist1.add('prasad');
        strlist1.add('manish');
        strlist1.add('hitesh');
        strlist1.add('pratik');
        strlist1.add(3,'gaurav');
        System.debug('List : '+strlist1);
        
        strlist2.addAll(strlist1);
        System.debug('List : '+strlist2);
        
        strlist2=strlist1.clone();
        System.debug('List : '+strlist2);
        
        strlist2.clear();
        System.debug('List : '+strlist2);
    }
}