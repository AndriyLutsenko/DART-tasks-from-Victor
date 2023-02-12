import 'dart:io';

void main() {
  print("\nПрограма \"Від меншого до більшого\"\n");
  var e = "Некоректне введення. Повторіть спробу";
  var a;
  var b;
  while (a == null) {
    stdout.write("Введіть натуральне число:  ");
    a = int.tryParse(stdin.readLineSync()!);
    if (a == null || a <= 0) print(e);
  }
  while (b == null) {
    stdout.write("Введіть друге натуральне число:  ");
    b = int.tryParse(stdin.readLineSync()!);
    if (b == null || b <= 0) print(e);
  }
  int x1;
  int x2;
  if (a < b) {
    x1 = a;
    x2 = b;
  } else {
    x1 = b;
    x2 = a;
  }
  for (int i = x1; i <= x2; i++) {
    stdout.write("${i}, ");
  }
}
