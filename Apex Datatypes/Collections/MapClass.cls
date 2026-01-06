public class MapClass {
    public static void myMethod(){
        //***MAP INITIALIZATION***
        
        // Map<Datatype_key, Datatype_value> mmap= new Map<Datatype_key, Datatype_value>();
        // Datatype_key can only be PRIMITIVE
        // Datatype_value can be PRIMITIVE, sOBJECTS, APEX OBJECTS, and other COLLECTIONS
        
		//Creating and Initializing a map
		Map<Integer, String> mmap = new Map<Integer, String>();
        
		//Adding values to map
		mmap.put(11,'Vithula');
        mmap.put(12,'Priya');
        mmap.put(13,'Sri');
        
        System.debug(mmap);
        
        mmap.put(11,'Interstellar'); //Overwrites
        System.debug(mmap);
        
		//Initializing and assigning value together        
        Map<Integer,String> m1 = new Map<Integer,String>{1=>'Vithula',2=>'Priya',3=>'Sri'};
        
        System.debug(m1);
        
        //Methods of MAP
        
    	mmap.putAll(m1);
        System.debug(mmap.get(1)); //Vithula
        
        List<String> l = new List<String>();
        l=mmap.values();
        
        System.debug(l); //(Interstellar,Priya,Sri, Vithula, Priya, Sri)
        
        Map<Integer,String> o = new Map<Integer,String>();
        o = mmap.clone();
        
        System.debug(mmap.keySet());
        
        System.debug(mmap.containsKey(3)); //true
        
        System.debug(mmap.isEmpty()); //false
        
        System.debug(mmap.size()); //6
        
        mmap.remove(2); // removes the element at key 2
        
        mmap.clear(); // clears the map
        
    }
}