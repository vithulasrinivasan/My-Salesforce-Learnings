@isTest // Test method that has access to only the data it creates and organization setup and metadata objects.
public class TestClass1 {
    static testmethod void testbeforeinsertmethod(){
        
        // first , we will prepare the test data
        
        list<product2> plist = new list<product2>();
        for(integer x=0; x<200; x++){
            product2 p = new product2(name = 'newproduct1');
            plist.add(p);
        }
        
        // now, we will insert data which will fire the product trigger
        
     	Test.startTest();
        
        insert plist; // DML statement that fires the trigger
        
        Test.stopTest();
    }
}