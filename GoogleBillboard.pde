 // result will be printed in the console box!!
 // GOOGLE billboard challenge
 
public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

public void setup()  
{            
  String x = e.substring(0, 1) + e.substring(2, 12);
  double test = Double.parseDouble(x);
  if (isPrime(test))
    System.out.println("First 10 digit prime number in the decimal part of e = " + test);
  for (int i = 2; i < e.length()-10; i++) {
    x = e.substring(i,i+10);
    test = Double.parseDouble(x);
    if (isPrime(test)){
      System.out.println("First 10 digit prime number in the decimal part of e = " + test);
      break;
    }
  }
}  
public void draw()  
{   
  // not needed for this assignment
  // result will be printed in the console box!!
}  
public boolean isPrime(double dNum)  
{   
  if (dNum < 2) {
    return false;
  } else {
    for (double i = 2; i <= Math.sqrt(dNum); i++)
      if (dNum%i == 0) return false;
  }
  return true;
} 
