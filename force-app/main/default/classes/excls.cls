public class excls {
	
    public ApexPages.StandardSetController controller;
    public set<Id> contactIds {get;set;}
    
    public excls(ApexPages.StandardSetController controller){
        this.controller=controller;
        contactIds = new set<Id>();
        
        for(contact cc : (List<contact>)controller.getSelected())
        {
            contactIds.add(cc.Id);
        }
        System.debug('Contact Ids : '+contactIds);
    }

}