/***
 * Test Classes are annotated with @isTest
 * 
 * Syntax for test method
 * @isTest static void testname(){
	// code block
	}

	(or)

* static testmethod void testname(){
	// code block
	}	

***/


@isTest
public class TestClass5 {
    
    static testmethod void testadd(){
        
        User a =[select name from user where id='0056f000008s4lkqai' limit 1];
        
        system.runAs(a) //test record level access for users in the code being tested
        {
            TestCalculate c = new TestCalculate(10,20);
            c.add();
            
            integer r = c.getResult();
            system.assertequals(30,r);
        }
    }
    
    @isTest
    static void testsubtract(){
        TestCalculate c = new TestCalculate(50,20);
        c.subtract();
        
        integer r = c.getResult();
        system.assertequals(30,r);
    }
    
    @isTest
    static void testmultiply(){
        TestCalculate c = new TestCalculate(50,20);
        c.multiply();
        
        integer r = c.getResult();
        system.assertequals(1000,r);
    }
    
    @isTest
    static void testdivide(){
        TestCalculate c = new TestCalculate(10,2);
        c.divide();
        
        integer r = c.getResult();
        system.assertequals(5,r);
    }
    
    
    
}