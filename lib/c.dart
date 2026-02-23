import 'dart:io';

void main() {
  print("Enter your marks (0 - 100): ");
  int marks = int.parse(stdin.readLineSync()!);

  if (marks >= 90 && marks <= 100) {
    print("Grade A");
  } 
  else if (marks >= 80 && marks < 90) {
    print("Grade B");
  } 
  else if (marks >= 70 && marks <= 79) {
    print("Grade C");
  } 
  else if (marks >= 60 && marks <= 69) {
    print("Grade D");
  } 
  else if (marks < 60 && marks >= 0) {
    print("Grade E");
  } 
  else {
    print("Invalid Marks");
  }
}