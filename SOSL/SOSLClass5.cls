public class SOSLClass5 {
    public static void myMethod(){
        //***DYNAMIC SOSL***
        String s = 'Find \'John\' RETURNING Account,Contact';
        List<List<sObject>> slist = search.query(s);
    }
}