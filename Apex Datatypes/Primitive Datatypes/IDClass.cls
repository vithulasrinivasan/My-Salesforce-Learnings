public class IDClass {
	public static void myMethod()
    {
        ID i='0016F00002SgrbH';
        
        String s='00B6F00000F3sppUAB';
        
        ID i1=s; //VALID
        
        ID i2='ABCDEFGHIJKLMNO'; //RUNTIME ERROR
           
    }
}