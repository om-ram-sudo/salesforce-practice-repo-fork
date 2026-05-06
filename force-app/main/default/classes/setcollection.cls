public class setcollection {
    public void setlist(){
        Set<String> slist = new Set<String>();
        Set<String> slist2 = new Set<String>();
        slist.add('Maharashtra');
        slist.add('Goa');
        slist.add('Bihar');
        slist.add('Haryana');
        slist.add('Punjab');
        slist.add('Gujarat');
        System.debug('Set 1 : '+slist);
        slist2.add('Goa');
        slist2.add('Bihar');
        slist2.add('Haryana');
        System.debug('Set 1 Retainall Set 2 : '+slist.retainall(slist2));
        System.debug('Set 2 : '+slist2);
        
        
    /*    slist2.add('Punjab');
        slist2.addall(slist);
        System.debug('Set 1 add in Set 2 : '+slist2);
        System.debug('Set Contains All : '+slist.containsall(slist2));
        System.debug('Set 1 Is Empty : '+slist.isempty());
        System.debug('Set 1 Is Equals Set 2 : '+slist.equals(slist2));
        System.debug('Set 1 Contains "Goa" : '+slist.contains('Goa'));
        System.debug('Set 1 Size : '+slist.size());
        slist.remove('Bihar');
        System.debug('Set 1 : '+slist);
        slist2=slist.clone();
        System.debug('Set 2 Clone: '+slist2);
        slist2.clear();
        System.debug('Set 2 Clear: '+slist2);    */
        
    }
}