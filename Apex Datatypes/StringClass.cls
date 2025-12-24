public class StringClass {
	public static void myMethod()
    {
        String s='Vithula';
        String s1='S';
        
        String s2 = s+s1; //VithulaS
        
        s2=s2+'is great';
        
        System.debug(s2); //VithulaS is great
    }
}