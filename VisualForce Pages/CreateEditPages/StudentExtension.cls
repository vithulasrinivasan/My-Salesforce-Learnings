public class StudentExtension {
	public List<Student__c> stlist{get;set;}
    
    public StudentExtension(){
        stlist = [SELECT Name, Student_Name__c from Student__c order by Student_Name__c];
    }
    
    public StudentExtension(ApexPages.StandardController s){
        stlist = [SELECT Name, Student_Name__c from Student__c order by Student_Name__c];
    }
    
    public void save(){
        System.debug('Save Method Student Extension');
    }
    
    public void sayHello(){
        System.debug('Say Hello Student Extension');
    }
}