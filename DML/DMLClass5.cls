public class DMLClass5 {
    public static void myMethod(){
        //***UNDELETE***
        //to undelete the lead records which got deleted today
        List<Lead> deletedleads = [SELECT name from lead where isDeleted=true and lastmodifieddate=today ALL ROWS];
        undelete deletedleads;
    }
}