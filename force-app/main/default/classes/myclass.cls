public class myclass {

	
    public void mymethod(){
        
        List<string> st = new List<string>();
        List<string> st2 = new List<string>();
       	st.add('maharashtra');
        st.add('Goa');
        st.add('Uttar Pradesh');
        st.add('Madhya Pradesh');
        st.add(1,'Punjab');
        
        st2.add('Gujarat');
        st2.addall(st);
        System.debug(st2);
        System.debug(st.equals(st2));
       
      
    }
}