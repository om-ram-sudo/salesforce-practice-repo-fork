public class SetFunc {
	
    public void setmethod(){
        Set<string> st1 = new Set<string>();
        Set<string> st2 = new Set<string>();
    	st1.add('Maharashtra');
        st1.add('Goa');
        st1.add('Haryana');
        st1.add('Madhya Pradesh');
        st1.add('Punjab');
        st2.add('Gujarat');
        st2.addall(st1);
        System.debug('Set 1 : '+st1);
        System.debug('Set 2 : '+st2);
		System.debug('Set Size 1: '+st1.size());
        System.debug('Set Size 2: '+st2.size());
        System.debug('Set 1 == Set 2 : '+st1.equals(st2));
        System.debug('Set 1 Is Empty : '+st1.isempty());
        st1.remove('Gujarat');
        System.debug('Set 1 : '+st1);
        System.debug('Clone Set : '+st1.clone());
        st2.clear();
         System.debug('Set 1 : '+st1);
        System.debug('Set 2 : '+st2);
    }
}