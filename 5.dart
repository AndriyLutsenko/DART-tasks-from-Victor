import 'dart:io';

void main() {
  print("Програма розрахунку часу поїздки \n");
  stdout.write("Введіть середню швидкість автомобіля (км/год): ");
  var speed = num.tryParse(stdin.readLineSync()!);
  if (speed != null && speed > 0) {
    stdout.write("Введіть відстань яку потрібно проїхати (км): ");
    var distance = num.tryParse(stdin.readLineSync()!);
    if (distance != null && distance >= 0) {
      stdout.write("Введіть кількість зупинок (1 зупинка - 10хв.): ");
      var stops = num.tryParse(stdin.readLineSync()!);
      if (stops != null && stops >= 0) {
        print('');
        var time = (distance / speed) + (stops / 6);
        var hh = time.toInt();
        var mm = ((time - hh) * 60).round();
        print("Орієнтовний час поїздки: $hh год. $mm хв.");
      } else {
        print("\n ! Некоректне введення");
      }
    } else {
      print("Некоректне введення");
    }
  } else {
    print("Некоректне введення");
  }
}
