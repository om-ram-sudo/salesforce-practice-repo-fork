public class listcollection {
    
    public void listmethod(){
        
		List<String> slist = new List<String>();
 		List<String> slis2t = new List<String>();
    	slist.add('Maharashtra');
    	slist.add('Goa');
    	slist.add('Bihar');	
    	slist.add('Uttar Pradesh');
    	slist.add(2,'Panjab');
    	System.debug('List 1 : '+slist);
        slis2t.add('Gujarat');
        slis2t.addall(slist);
        System.debug('List 1 is add in List 2  : '+slis2t);
        slis2t=slist.clone();
        System.debug('Clone List 2 : '+slis2t);
        System.debug('List 2 Is Empty: '+slis2t.isempty());
        System.debug('List 2 Is Equals List 1: '+slis2t.equals(slist));
        System.debug('List 2 Contains "Goa": '+slis2t.contains('Goa'));
        System.debug('List 1 Value of 3 index: '+ slist.get(3));
        System.debug('List 1 index of "Uttar Pradesh": '+ slist.indexof('Uttar Pradesh'));
        System.debug('List 1 Size : '+slist.size());
        slis2t.clear();
        System.debug('List 2 Clear : '+slis2t);
	}
}