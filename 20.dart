import 'dart:io';

void main() {
  var e = "Некоректне введення. Повторіть спробу";
  var a;
  while (a == null || a <= 0) {
    stdout.write("Введіть натуральне число:  ");
    a = int.tryParse(stdin.readLineSync()!);
    if (a == null || a <= 0) print(e);
  }
  stdout.write("Квадрати натуральних чисел меньші за $a:  ");
  for (int i = 1; i <= a; i++) {
    if (i * i < a) stdout.write("${i * i}, ");
  }
}
