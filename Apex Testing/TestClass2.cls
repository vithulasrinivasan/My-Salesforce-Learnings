@isTest(SeeAllData = true) // This class contains Test method that has access to all data.
public class TestClass2 {
    static testmethod void testmethodfirst(){
        contact obj = [SELECT Id, Name from contact where name='test' LIMIT 1];
        //accessing contact from database
    }
    
    @isTest(SeeAllData=false)
    static void testmethodsecond(){
        contact obj1= [SELECT Id, Name from contact where name='test' LIMIT 1];
        //accessing contact from database although @isTest(SeeAllData=false) is applied for method 
        //but it will get ignored as test class is having @isTest(SeeAllData = true)
    }
}