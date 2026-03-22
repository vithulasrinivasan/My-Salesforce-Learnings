@isTest
public class TestClass3 {
	@testSetup // create test data for every unit test method in this class
    static void setup(){
        //TRANSCIENT - TEST DATA
        //create common test accounts - this will be rolled back after all the test methods of this class are executed
        list<account> testaccts = new list<account>();
        for(integer i=0; i<2; i++){
            testaccts.add(new account(name = 'testacct'+i));
        }
        insert testaccts;
    }
    
    @isTest
    static void testmethod1(){
        //get the first test account by using a SOQL query
        account acct = [SELECT Id from account where name = 'testacct0' LIMIT 1];
        
        //modify first account
        acct.phone = '555-1212';
        
        update acct; // this update is local to this test method only
        
        //delete second account
        account acct2 = [SELECT id from account where name='testacct1' limit 1];
        
        //this deletion is local to this test method only
        delete acct2;
        
    }
}