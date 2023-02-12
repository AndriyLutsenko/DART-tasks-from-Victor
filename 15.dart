import 'dart:io';

void main() {
  var e = "Некоректне введення. Повторіть спробу";
  var a;
  var s=0;
  while (a == null || a <= 0) {
    stdout.write("Введіть натуральне число:  ");
    a = int.tryParse(stdin.readLineSync());
    if (a == null || a <= 0) print(e);
  }
  stdout.write("Сума чисел від 1 до $a дорівнює ");
  for (int i = 1; i <= a; i++) {
    s=s+i;
      }
  stdout.write("${s}");
}
