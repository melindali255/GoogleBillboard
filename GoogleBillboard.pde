public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
private int beginIndex = 2;
private int endIndex = 12;
private Double dNums;
private double answer = 1.0;
public void setup()  
{            
  String stringNums = e.substring(beginIndex, endIndex); 
  dNums = Double.parseDouble(stringNums);
  while (isPrime(dNums) == false) {
    beginIndex++;
    endIndex++;
    stringNums = e.substring(beginIndex, endIndex);
    dNums = Double.parseDouble(stringNums);
  }
  answer = dNums;
  System.out.println(answer);
}

public void draw()  
{   
  //not needed for this assignment
}

public boolean isPrime(double dNum)  
{   
  for (int j = 2; j<= Math.sqrt(dNum); j++) {
    if (dNum%j == 0) {
      return false;
    }
  }
  return true;
}