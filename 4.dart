import 'dart:io';

void main() {
  print("Програма розрахунку вартості цукерок \n");
  stdout.write("Введіть ціну 1 КГ цукерок (грн): ");
  var cina = num.tryParse(stdin.readLineSync()!);
  if (cina != null && cina >= 0) {
    stdout.write("Введіть вагу покупки в грамах: ");
    var vaga = num.tryParse(stdin.readLineSync()!);
    if (vaga != null && vaga >= 0) {
      print('');
      var price = (vaga / 1000) * cina;
      print("Вартість покупки: $price грн.");
    } else {
      print("Некоректне введення");
    }
  } else {
    print("Некоректне введення");
  }
}
