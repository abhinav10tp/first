import 'dart:io';

void main()
{
  print("Enter the Name:");
  String name = (stdin.readLineSync()!);
  print("Enter the Mark:");
  num a = int.parse(stdin.readLineSync()!);

  print("Name: $name");
  if(a>=91 && a<=100)
  {
    print("Grade: A+");
  }

  else if(a>=81)
  {
    print("Grade: A");
  }

  else if(a>=71)
  {
    print("Grade: B+");
  }

  else if(a>=61)
  {
    print("Grade: B");
  }

  else if(a>=51)
  {
    print("Grade: C+");
  }
  else if(a>=41)
  {
    print("Grade: C");
  }

  else if(a>=33)
  {
    print("Grade: D+");
  }

  else if(a>=21)
  {
    print("Grade: D");
  }
  else{
    print("Failed");
  }
}