public class ListClass {
    public static void myMethod(){
        //***LIST INITIALIZATION***
        
        // List<Datatype> lList = new List<Datatype>();
        // lList -> reference variable which refers to the list created by the RHS
        
        // Creating & Initializing an Integer List
        List<Integer> l1 = new List<Integer>();
        
        //Adding values to the List
        l1.add(2);
        l1.add(4);
        l1.add(6);
        
        System.debug(l1);
        
        //Initializing and adding values together
        List<Integer> l2 = new List<Integer>{2,4,6};
            
        //A String type list
        List<String> l3 = new List<String>{'I','am','Vithula S'};
        
        System.debug(l3);
        
        //List Array Notation
        Integer[] l4 = new Integer[4]; //size of the array is given as 4bytes but it is not static
        
        //or
        Integer[] l5 = new List<Integer>();
        
        //or
        List<Integer> l6 = new Integer[4];
        
        //Adding values  using array notation 
        l6[0]=10;
		l6[1]=20;
		l6[2]=30;
        l6[3]=40;
        
        //Accessing the nth element of a list
        System.debug(l6[1]);
        
        //Methods of lists
        
        System.debug(l6.size()); //4
        
        System.debug(l6.get(2)); //30
        
        l6.remove(2); //-> removes value on the index 2
        
        System.debug(l2[2]); //40 -> after shifting coz list is sequential
        
        List<Integer> l7 = l6.clone(); // copy of the list l6 to l7
        
        System.debug(l7);
        
        l7[0]=50;
        l7.set(0,50); // set(index,value) ; get(index)
        
        System.debug(l7); //(50,20,40)
        
        l7.sort(); //(20,40,50)
        
        System.debug(l7.isEmpty()); //false
        
        l7.clear(); // clears the list 
        
        System.debug(l7.isEmpty()); //true
        
        //matrix - 2D array
        //***Nested Lists*** - List of Lists
		
        List<Integer> llist2 = new List<Integer>(); // -> 1D list
        
        List<List<Integer>> llist = new List<List<Integer>>(); // -> 2D list
        List<Integer> ll1 = new List<Integer>{11,20,33};
        List<Integer> ll2 = new List<Integer>{12,20,33};
        List<Integer> ll3 = new List<Integer>{13,20,33};
            
        llist.add(ll1);
        llist.add(ll2);
        llist.add(ll3);
        
        System.debug(llist);
        
        List<List<Integer>> llist1 = new List<List<Integer>>{
            new List<Integer>{11,20,33},
            new List<Integer>{12,20,33},
            new List<Integer>{13,20,33}    
        };
            
        System.debug(llist1);
        
        //3D LIST
        
        List<List<List<Integer>>> list3d = new List<List<List<Integer>>>{
            new List<List<Integer>>{new List<Integer>{10,20,30},new List<Integer>{40,50,60},new List<Integer>{70,80,90}},
            new List<List<Integer>>{new List<Integer>{10,20,30},new List<Integer>{40,50,60},new List<Integer>{70,80,90}},
            new List<List<Integer>>{new List<Integer>{10,20,30},new List<Integer>{40,50,60},new List<Integer>{70,80,90}}
        };
            
        System.debug(list3d);
    }
}