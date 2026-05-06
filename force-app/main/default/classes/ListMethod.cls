public class ListMethod {

    public void MyMethod()
    {
        List<String> sl1 = new List<String>();
        List<String> sl2 = new List<String>();
        sl1.add('Maharashtra');
        sl1.add('Goa');
        sl1.add('Haryana');
        sl1.add(2,'Gujarat');
        sl2.add('Punjab');
        sl2.addall(sl1);
        System.debug('List 1 : '+sl1);
        System.debug('List 2 : '+sl2);
        System.debug('List 1 Size : '+sl1.size());
        System.debug('List 2 Size: '+sl2.size());
        System.debug('List 1 Equal To List 2 : '+sl1.equals(sl2));
        System.debug('List 1 Contains "Punjab" : '+sl1.contains('Punjab'));
        System.debug('List 1 Is Empty : '+sl1.isempty());
        System.debug('List 2 Index Of "Punjab" : '+sl2.indexof('Punjab'));
        System.debug('List 1 Get The Value Of 3 Index Position : '+sl1.get(3));
        System.debug('List 2 Remove : '+sl2.remove(1));
        System.debug('List 2 : '+sl2);
        sl1.clear();
        System.debug('List 1 Is Clear : '+sl1);
    }
}