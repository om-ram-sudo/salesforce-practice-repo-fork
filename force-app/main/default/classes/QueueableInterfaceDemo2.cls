public class QueueableInterfaceDemo2 implements Queueable{

    public void execute(QueueableContext qc){
        System.debug('I am in execute method of QueueableInterfaceDemo2');
        Opportunity opp = new Opportunity();
        opp.Name = 'Queueable Opportunity';
        opp.CloseDate = System.today();
        opp.StageName = 'Prospecting';
        INSERT opp;
        System.debug('Opportunity Inserted : '+opp.Name);
    }
}