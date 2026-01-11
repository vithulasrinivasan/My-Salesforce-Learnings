public class DMLClass3 {
    public static void myMethod(){
        //***UPSERT***
        //update the name of existing products and insert some new ones
        List<Product2> prodlist = [SELECT Name from Product2];
        for (Product2 p:prodlist){
            p.Name += '19';
        }
        
        Product2 p1 = new Product2(Name='Tenda wifi dongle 19');
        Product2 p2 = new Product2(Name='Tenda wireless switch 19');
		prodlist.add(p1);
        prodlist.add(p2);
        UPSERT prodlist;
    }
}