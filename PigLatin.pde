import java.util.*;
private int i;

public void setup() 
{
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int j = 0 ; j < lines.length; j++) 
	{
	  System.out.println(pigLatin(lines[j]));
	}
}
public void draw()
{
  fill(255,0,0);
  ellipse(25,25,10,10);
  ellipse(75,25,10,10);
  line(25,50,75,50);

}
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
public int findFirstVowel(String sWord)
{
for (int i=0; i<sWord.length(); i++)
  {
    if(sWord.substring(i,i+1).equals("a")|| sWord.substring(i,i+1).equals("e")|| 
    sWord.substring(i,i+1).equals("i")||sWord.substring(i,i+1).equals("o")|| 
    sWord.substring(i,i+1).equals("u"))
    	return i;
  }
 
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{

	//if word starts with vowel
	if(findFirstVowel(sWord) ==0)
	{	
    	return sWord + "way";
    }
    //if word starts with qu
    if(sWord.substring(0,2).equals("qu"))
    {
    	return sWord.substring(2,sWord.length())+"qu"+"ay";
    }	
	//if word has all constants
	if(findFirstVowel(sWord) ==-1)
	{
		return sWord + "ay";
	}
	 //if word does not start with vowel and i finds vowel, return vowel plus end and add 
	//consants to end plus ay
	if(findFirstVowel(sWord)==i)
    {
    	return sWord.substring(i,i+sWord.length())+sWord.substring(0,i)+"ay";
    }	
	else
	{
		return "ERROR!";
	}
}
