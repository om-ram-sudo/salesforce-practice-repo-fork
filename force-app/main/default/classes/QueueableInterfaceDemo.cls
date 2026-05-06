public class QueueableInterfaceDemo implements Queueable{

    public void execute(QueueableContext qc){
        System.debug('I am in QueueableInterfaceDemo Class');
        Account acc = new Account();
        acc.Name = 'Account';
        Insert acc;
        system.debug('Insert Account : '+acc);
        Id jobId = system.enqueueJob(new QueueableInterfaceDemo2());
		system.debug('Job Id 1 : '+jobId);
    }
}