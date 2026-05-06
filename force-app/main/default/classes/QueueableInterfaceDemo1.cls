public class QueueableInterfaceDemo1 implements Queueable{

    public void execute(QueueableContext qc){
        System.debug('I am in execute method of QueueableInterfaceDemo1');
        Contact con = new Contact();
        con.LastName = 'Queueable Contact';
        INSERT con;
        System.debug('Contact Inserted : '+con.LastName);
        Id jobId = system.enqueueJob(new QueueableInterfaceDemo2());
        system.debug('JobId of QueueableInterfaceDemo2 : '+JobId);
    }
}