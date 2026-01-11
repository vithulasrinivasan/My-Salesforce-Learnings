public class DMLClass2 {
    public static void myMethod(){
        //***UPDATE***
        //Update Opportunities
        List<Opportunity> opplist = [SELECT Name,Amount,CloseDate from Opportunity where CreatedDate= LAST_90_DAYS];
        Date d = System.today()+90;
        for(Opportunity o:opplist){
            o.CloseDate = d;
        }
        update opplist;
    }
}