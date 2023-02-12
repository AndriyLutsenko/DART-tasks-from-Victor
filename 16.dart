import 'dart:io';

void main() {
  print("\n Програма \"Сума цифр\" \n");
  var e = "Некоректне введення. Повторіть спробу";
  var x;
  while (x == null || x <= 0 || (x ~/ 100 < 1) || (x ~/ 100 > 9)) {
    stdout.write("Введіть трьохцифрове натуральне число:  ");
    x = int.tryParse(stdin.readLineSync()!);
    if (x == null || x <= 0 || (x ~/ 100 < 1) || (x ~/ 100 > 9)) print(e);
  }
  int a = x ~/ 100;
  int b = x ~/ 10 - a * 10;
  int c = x % 10;
  int s = a + b + c;
  print("\n Сума цифр числа $a$b$c дорівнює $s");
}
