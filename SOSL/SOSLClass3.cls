public class SOSLClass3 {
    public static void myMethod(){
        //***WILDCARDS IN SOSL***
        
        //1. * - ASTERICK -> 0 or N number of characters
        List<List<sObject>> slist1 = [FIND 'Univ*' IN NAME FIELDS RETURNING Account, Contact];
        //will return the records which have "Univ" appended by anything
        
        //2. ? - QUESTION MARK -> a single character
        List<List<sObject>> slist2 = [FIND 'Jo?n' RETURNING Account,Contact];
        //will return the records which have any character at the place of ? in "Jo?n"
    }	
}