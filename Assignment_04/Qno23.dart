void main() {
  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'John',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'Emma',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'Ryan',
      'marks': [70, 65, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ];

  checkGrade(studentDetails);
}

checkGrade(List Student) {
  num totalMarks = 300; // because each subject is of 100 marks

  num Percentage = 0, obtainedMarks = 0;

  for (var i = 0; i < Student.length; i++) {
    obtainedMarks = 0;
    Percentage = 0;

    String Grade = "";

    for (var j = 0; j < 3; j++) {
      obtainedMarks += Student[i]["marks"][j];
    }

    Percentage = (obtainedMarks / totalMarks) * 100;

    if (Percentage > 100) {
      print("Invalid Marks!");
    } else if (Percentage <= 100 && Percentage > 90) {
      Grade = "A";
    } else if (Percentage <= 90 && Percentage > 80) {
      Grade = "B";
    } else if (Percentage <= 80 && Percentage > 70) {
      Grade = "C";
    } else if (Percentage <= 70 && Percentage > 60) {
      Grade = "D";
    } else if (Percentage <= 60) {
      Grade = "F";
    }
    

    print("Student Name: ${Student[i]["name"]} | Student Grade : $Grade ");
  }
}
