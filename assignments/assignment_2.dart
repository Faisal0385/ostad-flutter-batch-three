///   Problem: Student Grading System
///  You are building a student grading system. Each student has a name and a test score.
///  Your task is to write a Dart function called studentGrade that takes in the student's name and test score,
///   and returns their corresponding grade based on the following grading scale:
///   A: 90 - 100
///   B: 80 - 89
///   C: 70 - 79
///   D: 60 - 69
///   F: 0 - 59
///   The function should validate the test score and ensure it is within the valid range of 0 to 100.
///   If the score is valid, it should return the grade. If the score is invalid, it should return "Invalid Grade".
///   Here's an example usage of the studentGrade function:

void main(){

  List Students = [
    {"name":"Faisal A Salam", "testScore": 55},
    {"name":"Fahad A Salam", "testScore": 95},
    {"name":"Fahim A Salam", "testScore": 85},
  ];

  for(int i = 0; i < Students.length; i++){
    studentGrade(Students[i]['name'], Students[i]['testScore']);
  }

}


studentGrade(studentName, testScore){

  if( testScore >= 90 && testScore <= 100){
    print("$studentName's grade: A");
  }else if( testScore >= 80 && testScore <= 89){
    print("$studentName's grade: B");
  }else if( testScore >= 70 && testScore <= 79){
    print("$studentName's grade: C");
  }else if( testScore >= 60 && testScore <= 69){
    print("$studentName's grade: D");
  }else if( testScore >= 0 && testScore <= 59) {
    print("$studentName's grade: E");
  }else{
    print("Invalid Grade");
  }

}