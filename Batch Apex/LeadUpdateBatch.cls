global class LeadUpdateBatch implements Database.Batchable<sObject>, Schedulable {
    
    //To schedule a batch job, we need to implement the Schedulable interface.
    
    //First , create a batch class with GLOBAL access modifier
    //which implements the interface - Database.Batchable<sObject>
    
    //START
    //Collects the records or objects to pass to the interface method "execute".
    //This is the first method which is called when we execute a batch apex.
    //It returns a Database.QueryLocator object that contains the records passed to the job.
    
    //Database.BatchableContext bc - stores the reference of the batch job that we are trying to execute.

    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([SELECT AnnualRevenue from Lead]);
    }
    
    //EXECUTE
    //use the execute method to do the required processing of each chunk of data.
    //this method is called for each batch/chunk of records that you pass through.
    
    global void execute(Database.BatchableContext bc, List<lead> llist){
        for(lead l:llist){
            l.annualrevenue=2000000;
            }
        
        update llist;
    }
    
    //FINISH
    //This method is called after all batches are processed.
    //generally we write the code inside it to send a confirmation email or execute any post processing operations.
    
    global void finish(Database.BatchableContext bc){
        //to send an email using code
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddress = new String[]{'b@gmail.com'};
        mail.settoaddresses(toaddress);
        mail.setsubject('Batch job completed');
        mail.setplaintextbody('hey,the batch job that you started is successfully completed');
        Messaging.sendemail(new messaging.singleemailmessage[]{mail});
    }
    
    //how to execute batch apex class?
    //LeadUpdateBatch lub = new LeadUpdateBatch(); - create an object of that batch apex class
    //Database.executeBatch(lub);
    
    global void execute(SchedulableContext sc){
        
        // write the code which will execute the batch job.
        LeadUpdateBatch lub = new LeadUpdateBatch(); 
    	Database.executeBatch(lub);
        
        //we can also define the size of chunk while executing the batch.
        //Database.executeBatch(lub,200);
        //here 200 is the size of chunk.
        
        //When will this batch job get scheduled or executed daily??
        
        //sf org -> setup -> apex classes -> schedule apex
    }    

}