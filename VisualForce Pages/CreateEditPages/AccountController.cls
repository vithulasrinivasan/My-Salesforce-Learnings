public class AccountController {
	
    public String searchText{get;set;}
    public List<Account> acclist{get;set;}
    
    public AccountController(){
        
    }
    
    public void search(){
        
        searchText = searchText + '%';
        
    	acclist = [SELECT Name, NumberOfEmployees from Account where Name like :searchText];    
    }
    
}