public class DatabaseClass3 {
    public static void myMethod(){
        //***DATABASE CLASS METHOD RESULT OBJECT***
        // Insert, Update - save result class
        // Upsert - upsert result class
        // Merge - merge result class
        // Delete - delete result class
        // Undelete - undelete result class
        // convertLead - lead convert result class
        // emptyRecycleBin - empty recycle bin result class
        
        List<Account> aclist = new List<Account>();
        for(integer i=0; i<10;i++){
            aclist.add(new Account(Name='My result test '+i,numberOfEmployees=i));
        }
        aclist.add(new Account()); // this sobject shuld not be inserted bcoz name field is empty
        System.debug('Total Accounts: '+aclist.size()); //11
        
        Database.saveResult[] savelist = Database.insert(aclist,false);
        
        for(Database.saveResult s: savelist){
            if(s.isSuccess()){ //true
                System.debug('I was successful = '+s.getID());
            }
            else{
                System.debug('I was unsuccessful because of the following errors:');
                for(Database.error dr:s.getErrors()){
                    System.debug(dr.getStatusCode()+' '+dr.getMessage());
                    System.debug('fields affected by insertion are: '+ dr.getFields());
                }
            }
        }
    }
}