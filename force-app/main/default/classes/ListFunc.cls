public class ListFunc {
    
    public void listmethod(){
        
        List<string> st1 = new List<string>();
        List<string> st2 = new List<string>();
    	st1.add('Maharashtra');
        st1.add('Goa');
        st1.add('Haryana');
        st1.add('Madhya Pradesh');
        st1.add('Punjab');
        st1.add(3,'Uttar Pradesh');
        st2.add('Gujarat');
        st2.addall(st1);
        System.debug('List 1 : '+st1);
        System.debug('List 2 : '+st2);
		System.debug('List Size 1: '+st1.size());
        System.debug('List Size 2: '+st2.size());
        System.debug('List 1 == List 2 : '+st1.equals(st2));
        System.debug('List 1 Is Empty : '+st1.isempty());
        System.debug('List 1 Contains Goa : '+st1.contains('Goa'));
        System.debug('Index Of Punjab In List 1 : '+st1.indexof('Punjab'));
        System.debug('Index Of Punjab  In List 2 : '+st2.indexof('Punjab'));
        System.debug('Get The Value of 2 Index : '+st1.get(2));
        System.debug('Get The Value of 2 Index : '+st2.get(2));
        System.debug('Remove'+st1.remove(5));
        System.debug('List 1 : '+st1);
    }
}