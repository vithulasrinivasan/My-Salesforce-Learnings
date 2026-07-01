public class LeadExtension {
	
    public List<Lead> llist{get;set;}
    
    public LeadExtension(ApexPages.StandardController s){
        llist = [SELECT Name, Status from Lead order by Name];
    }
    
    public LeadExtension(FirstController fc){
        llist = [SELECT Name, Status from Lead order by Name];
    }
    
    public void save(){
        System.debug('Save Method Lead Extension');
    }
    
}