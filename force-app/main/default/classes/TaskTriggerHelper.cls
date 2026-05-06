public class TaskTriggerHelper {

    public static void setPriority(List<Task> newlist){
        for(Task taskRec : newlist){
            taskRec.Priority = 'High';
        }
    }
}