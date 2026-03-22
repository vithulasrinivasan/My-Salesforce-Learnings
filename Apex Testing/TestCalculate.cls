public class TestCalculate {
	
    private integer a, b, result;
    
    public TestCalculate(integer a , integer b){
        this.a = a;
        this.b = b;
        
    }
    
    public void add(){
        result = a+b;
    }
    
    public void subtract(){
        result = a- b;
    }
    
    public void multiply(){
        result = a*b;
    }
    
    public void divide(){
        if(b==0)
            result=0;
        else
            result=a/b;
        getresult(); // option 1 : call it inside another public method 
    }
    
    // this is private method in this class
    // how to test this method?
    // 
    // option 2 : use @testVisible annotation
    @testVisible
    private integer getresult(){
        return result;
    }
}