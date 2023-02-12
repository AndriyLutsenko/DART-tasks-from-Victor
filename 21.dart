import 'dart:io';

void main() {
  var e = "Некоректне введення. Повторіть спробу";
  var a;
  while (a == null || a <= 0) {
    stdout.write("Введіть натуральне число:  ");
    a = int.tryParse(stdin.readLineSync()!);
    if (a == null || a <= 0) print(e);
  }
  for (int i = a;; i++) {
    if (i % 19 == 0) {
      stdout.write(
          "Найближче число більше за $a, яке націло ділиться на 19:  ${i}");
      break;
    }
  }
}
