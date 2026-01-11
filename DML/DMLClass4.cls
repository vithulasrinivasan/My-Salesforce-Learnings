public class DMLClass4 {
    public static void myMethod(){
        //***DELETE***
        //to delete duplicate contacts
        List<Contact> conlist = [SELECT Name from Contact];
        Map<String,ID> mmap = new Map<String,ID>();
        for (Contact c:conlist){
            mmap.put(c.name,c.id);
        }
        List<Contact> uniqlist= new list<contact>();
        list<contact> dellist = new list<contact>();
        
        set<string> s1 = mmap.keyset();
        set<id> uniqset = new set<id>();
        
        for (string s:s1){
            uniqset.add(mmap.get(s));
        }
        
        for(contact c:conlist){
            if (uniqset.contains(c.id))
                uniqlist.add(c); //unique records
           	else
                dellist.add(c); //duplicate records
        }
        delete dellist;
    }
}