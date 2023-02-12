import 'dart:io';

void main() {
  print("\nПрограма \"Квадрат числа\" \n");
  var e = "Некоректне введення. Повторіть спробу";
  while (true) {
    var x = null;
    while (x == null) {
      stdout.write("Введіть число:  ");
      x = num.tryParse(
          stdin.readLineSync()!.replaceAll(' ', '').replaceAll(',', '.'));
      if (x == null) print(e);
    }
    print("($x)^2 = ${x * x}");
  }
}
