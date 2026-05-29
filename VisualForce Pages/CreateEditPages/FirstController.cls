public class FirstController {
    
    public String accName;
    public Integer accEmployees;
    public String conName{get;set;}
    public String conEmail{get;set;}
    public String oppName{get;set;}
    public Decimal oppAmount{get;set;}
	
    public FirstController(){
        
    }
    
    public PageReference saveTheRecord(){
        Account a = new Account(Name=accName, NumberOfEmployees = accEmployees);
        insert a;
        
        Contact c = new  Contact(lastName = conName,email= conEmail, accountid = a.id);
        
        Opportunity o = new Opportunity(Name= oppName,Amount= oppAmount, accountid = a.id, StageName='Prospecting', CloseDate=System.today());
        
        insert c;
        insert o;
        
        
        PageReference pf = new PageReference('/apex/AccConOppCreatePage');
        return pf;
    }
    
    public void setAccName(String a){
        accName = a;
    }
    public String getAccName(){
        return accName;
    }
    
    public void setAccEmployees(Integer a){
        accEmployees = a;
    }
    public Integer getAccEmployees(){
        return accEmployees;
    }
  
}