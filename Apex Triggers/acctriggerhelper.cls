public class acctriggerhelper {
	//Account Trigger Helper
	
    public static void firstmethod(list<account> aclist){
        system.debug('calling from method 1, new records are:');
        for(account a:aclist){
            system.debug(a);
        }
    }
    
    public static void secondmethod(list<account> aclist){
        system.debug('calling from method 2, new records are:');
        for(account a:aclist){
            system.debug(a);
        }
    }
    
    
}