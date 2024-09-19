import 'dart:io';

void main() {
  // Map to store grade values
  Map<String, double> gradeValue = {
    'A': 4.0,
    'B': 3.0,
    'C': 2.0,
    'D': 1.0,
    'E': 0.0
  };

  // Function to validate grade input
  String getValidGrade() {
    while (true) {
      String? grade = stdin.readLineSync()?.toUpperCase();
      if (grade != null && gradeValue.containsKey(grade)) {
        return grade;
      }
      print("Invalid grade! Please enter a valid grade (A/B/C/D/E):");
    }
  }

  // Function to validate integer input
  int getValidInt(String prompt, int min, int max) {
    while (true) {
      print(prompt);
      String? input = stdin.readLineSync();
      int? value = int.tryParse(input ?? '');
      if (value != null && value >= min && value <= max) {
        return value;
      }
      print("Please enter a number between $min and $max.");
    }
  }

  print("==============================================");
  print("    Program Menghitung IPK Mahasiswa");
  print("==============================================");

  // Get number of semesters
  int numSemesters = getValidInt("Masukkan jumlah semester (2 - 14):", 2, 14);
  double totalPoints = 0;
  int totalSKS = 0;

  // Process each semester
  for (int semester = 1; semester <= numSemesters; semester++) {
    print("\nMasukkan jumlah mata kuliah semester $semester:");
    int numCourses = getValidInt("Jumlah mata kuliah (minimal 2):", 2, 10);

    double semesterPoints = 0;
    int semesterSKS = 0;

    // List to store courses for the semester
    List<Map<String, dynamic>> courses = [];

    // Process each course
    for (int course = 1; course <= numCourses; course++) {
      print("\nMasukkan mata kuliah ke $course:");
      print("Masukkan nama mata kuliah:");
      String? courseName = stdin.readLineSync();

      int sks = getValidInt("Masukkan jumlah SKS (1 - 24):", 1, 24);
      print("Masukkan nilai matkul (A/B/C/D/E):");
      String grade = getValidGrade();

      // Calculate the total points for the course
      double gradePoints = gradeValue[grade]!;
      semesterPoints += gradePoints * sks;
      semesterSKS += sks;

      // Store course details
      courses.add({
        'name': courseName,
        'sks': sks,
        'grade': grade,
      });
    }

    // Calculate NR (Nilai Rata-rata) for the semester
    double nr = semesterPoints / semesterSKS;
    totalPoints += semesterPoints;
    totalSKS += semesterSKS;

    // Display semester result
    print("\n--------------------------------------------");
    print("Hasil Semester $semester:");
    print("Mata Kuliah         SKS       Nilai");
    for (var course in courses) {
      print("${course['name']}         ${course['sks']}         ${course['grade']}");
    }
    print("\nSKS    : $semesterSKS");
    print("NR     : ${nr.toStringAsFixed(2)}");
    print("--------------------------------------------");
  }

  // Calculate IPK
  double ipk = totalPoints / totalSKS;

  // Display final transcript
  print("==============================================");
  print("Total SKS    : $totalSKS");
  print("IPK          : ${ipk.toStringAsFixed(2)}");
  print("==============================================");
}
