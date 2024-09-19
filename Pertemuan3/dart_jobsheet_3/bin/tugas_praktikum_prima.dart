void main() {
  String nama = "Agta Fadjrin Aminullah 2241760072";
  for (int i = 2; i <= 201; i++) {
    if (prima(i)) {
      print("$nama,dengan angka $i");
    }
  }
}

bool prima(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}