public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String sNew = new String();//returns with no spaces
   for(int i=0; i<word.length(); i++){
     if(Character.isLetter(word.charAt(i)) == true){
     sNew = sNew + word.charAt(i);
  }
}
  sNew.toLowerCase();//shifts to lowercase
   for(int i=word.length()-1; i>=0; i--){
    sNew = sNew + word.substring(i,i+1);
  }
   if(sNew.substring(0,sNew.length()).equals(word.substring(0,word.length()))){
     return true;
    }
     return false;
}
public String reverse(String str)
{
    String sNew = new String();
      for(int i=str.length();i>0;i--){
      sNew = sNew + str.substring(i-1,i);
    }
    return sNew;
}
