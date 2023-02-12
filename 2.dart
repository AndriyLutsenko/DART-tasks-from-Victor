import 'dart:io';
import 'dart:math';

void main() {
  print("Програма для визначення площі круга\n");
  stdout.write("Введіть радіус круга (число без одиниць вимірювання): ");
  var radius = num.tryParse(stdin.readLineSync()!);
  if (radius != null && radius >= 0) {
    stdout.write("Введіть одиниці вимірювання: ");
    var od = stdin.readLineSync();
    print('');
    var s = pi * radius * radius;
    print("Площа круга: $s квадратних $od");
    var prS = (s * 100).round() / 100;
    print("Площа круга (округлено до сотих): $prS кв.$od");
    print(prS.runtimeType);
    var prS1 = s.toStringAsFixed(3);
    print("Площа круга (округлено до тисячних): $prS1 кв.$od");
    print(prS1.runtimeType);
  } else {
    print("Некоректне введення");
  }
}
