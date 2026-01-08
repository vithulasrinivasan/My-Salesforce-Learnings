public class SOSLClass6 {
    public static void myMethod(){
        //***SOSL Keywords***
        //1.OR
        //2.AND
        
        List<List<sObject>> slist1 = [FIND 'John OR test' RETURNING Account,Contact];
        System.debug(slist1);
        
        List<List<sObject>> slist2 = [FIND 'John AND test' RETURNING Account,Contact];
        System.debug(slist2);
    }
}