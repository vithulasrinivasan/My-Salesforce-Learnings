public class SetClass {
    public static void myMethod(){
        //***SET INITIALIZATION***
        // Set<Datatype> s = new Set<Datatype>();
        
        //Create and Initializing an Integer set
        Set<Integer> s1 = new Set<Integer>();
        
        //Adding values to the set
        s1.add(2);
        s1.add(4);
        s1.add(6);
        s1.add(4);
        
        System.debug(s1);
        
        //Initializing & adding values together
        Set<Integer> s2 = new Set<Integer>{2,4,6,4};
            
        //Creating a string type set
        Set<String> s3 = new Set<String>{'I','am','Vithula'};
        
        //Creating set of sObjects
        //UNIQUENESS of sObjects -> uniqueness by their field values - if all the field values of both the sObjects are same , then they are duplicates
        
        Set<Account> sset = new Set<Account>();
        
        Account a1 = new Account(Name='Amazon',NumberOfEmployees=20000);
        Account a2 = new Account(Name='Walmart',NumberOfEmployees=20000);
        Account a3 = new Account(Name='Amazon',NumberOfEmployees=20000); //DUPLICATE - same field values as a1
        Account a4 = new Account(Name='Amazon'); //NumberOfEmployees will be NULL here
        
        sset.add(a1);
        sset.add(a2);
        sset.add(a3);
        sset.add(a4);
		        
        System.debug(sset);
        System.debug(sset.size()); //3
        
        a4.NumberOfEmployees=20000;
        System.debug(sset.size()); //3
        
        //Methods of sets
        List<Integer> l1=new List<Integer>{3,6,9};
        s2.addall(l1); //This method also takes set as an argument
        
        System.debug(s2); //(2,3,4,6,9)
        
		System.debug(s2.contains(3)); //true
		
		System.debug(s2.contains(56)); //false
		
		System.debug(s2.containsAll(l1)); //true
        
        System.debug(s2.size()); //5
        
        System.debug(s2.retainAll(l1)); //true
        
        System.debug(s2); //{3,6,9}
        
        Set<Integer> s=s2.clone();
        
        s2.remove(3);
        
        System.debug(s2); //{6,9}
			        
        s2.removeAll(l1);
        
        s2.clear(); //clears the set
    }
}