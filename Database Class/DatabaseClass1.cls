public class DatabaseClass1 {
    public static void emptyrecyclebin(){
        //***DATABASE CLASS METHODS***
	
        //***EMPTY RECYCLE BIN***
    
        List<Account> acclist = [SELECT ID from Account where isDeleted=true ALL ROWS];
        Database.emptyRecycleBin(acclist);
        
        //***COUNT QUERY***
        //The below dynamic SOQL will not work
        
        //Traditionally, we use the below command - ERROR
        //Illegal assignment from List<SObject> to Integer
        
        //Integer i1 = Database.query('SELECT count() from Account');
        
        Integer i1 = Database.countquery('SELECT count() from Account');
        //Return type of countquery is integer
        
        System.debug(i1);
        
        // Integer i1 = Database.query('SELECT count(ID) from Account'); EXCEPTION - no fields inside the count query
        
        //***LEAD CONVERSION*** -> account , contact , opportunity
        //It will not get deleted , it will be there in the reports but it will be removed from the UI
        
        Lead l = [SELECT name from lead where name like 'Sh%' limit 1];
        Database.leadConvert lc = new Database.leadConvert();
        
        lc.setLeadId(l.id);
        System.debug('ID of record inserted is: '+l.id);
        
        lc.convertedStatus ='Closed - converted';
        lc.ownerId = '0056F0000AXAKs'; //any user id
        Database.leadConvertResult lcr = Database.convertLead(lc);
    }
}