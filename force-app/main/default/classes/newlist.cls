public class newlist {
	
    public void mymethod(){
        List <String> slist = new List<String>();
        List <String> slist2 = new List<String>();
        slist.add('maharashtra');
        slist.add('goa');
        slist.add('maharashtra');
        System.debug('List 1 Add Method : '+slist);
        slist.add(2,'bihar');
        System.debug('List 1 Add (Index) Method: '+slist);
        slist.remove(3);
        System.debug('List 1 Remove Method : '+slist);
        slist2 = slist.clone();
        System.debug('List 1 Clone In List 2 Method : '+slist2);
        System.debug('List 1 Get Method : '+slist.get(1));
        System.debug('List 1 Indexof Method : '+slist.indexof('goa'));
        System.debug('List 1 Iscontains Method : '+slist.contains('maharashtra'));
         System.debug('List 1 Isequals List 2 Method : '+slist.equals(slist2));
        System.debug('List 1 Isempty : '+slist.isempty());
        System.debug('List 1 size : '+slist.size());
    }
}