@isTest
public class TestClass4 {
	// Testing the triggers - make the DML operations that activates the triggers to test that trigger
	
    @isTest
    static void testTrigger(){
        list<account> acclist = new list<account>();
        for(integer i=1; i<=100; i++){
            acclist.add(new account(name= 'test account'+i));
        }
        
        insert acclist;
        
        list<account> acclist2 = [SELECT name, numberofemployees from account];
        
        //if the test method or the test class has seenalldata property set as true 
        //then the query will return all the records of account object in the database
        //(including the ones that we created in the unit test) otherwise it will only
        //return the records which we created in the current unit test
        
        for(account a:acclist2){
            system.debug(a.id+a.name+a.numberofemployees);
        }
    }
	
}