public class mapcollection {
    
    public void mymethod(){
        Map<Integer,String> mp = new Map<Integer,String>();
        mp.put(100,'Punjab');
        mp.put(200,'Gujarat');
        mp.put(300,'Goa');
        mp.put(400,'Maharashtra');
        mp.put(500,'Bihar');
        
        System.debug('Map 1 : '+mp);
        System.debug('Map 1 Size : '+mp.size());
        System.debug('Map 1 Remove At Position 200 : '+mp.remove(200));
        System.debug('Map 1 : '+mp);
        System.debug('Map 1 Get At Position 300 : '+mp.get(300));
        System.debug('Map 1 key Set: '+mp.keyset());
        System.debug('Map 1 values: '+mp.values());
        System.debug('Map 1 is empty : '+mp.isempty());
        
        Map<ID,Contact> con = new Map<ID,Contact>([Select id, lastname, email, phone from contact]);
       // System.debug('Contact : '+con);
       //System.debug('Contact KeySet: '+con.keyset());
       System.debug('Contact KeySet: '+con.keyset());
    }
}