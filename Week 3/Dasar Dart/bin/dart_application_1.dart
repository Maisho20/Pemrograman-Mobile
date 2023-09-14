import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'dart:io';

void main(List<String> arguments) {
  print('${dart_application_1.getWorld}: ${dart_application_1.calculate()}!');
  print('Volume of cylinder is ${dart_application_1.volume()}\n\n');
  print('${dart_application_1.russian}\n');

  if (dart_application_1.nilai > 80) {
    print('Nilai Anda adalah: A');
  } else if (dart_application_1.nilai > 70) {
    print('Nilai Anda adalah: B');
  } else if (dart_application_1.nilai > 60) {
    print('Nilai Anda adalah: C');
  } else if (dart_application_1.nilai > 50) {
    print('Nilai Anda adalah: D');
  } else {
    print('Nilai Anda adalah: E');
  }

  print(
      'Nilai anda 85, maka anda dinyatakan: ${dart_application_1.kelulusan()}\n\n');

  // for loop
  for (int i = 1; i < 10; i++) {
    if (i < 5) {
      for (int j = 1; j <= i; j++) {
        stdout.write('🐢');
      }
    } else {
      for (int j = 10; j > i; j--) {
        stdout.write('🐢');
      }
    }
    print('');
  }
  print('\n\n');

  for (int i = 0; i <= 10; i++) {
    String emoji = '';
    if (i < 5) {
      for (int j = 0; j <= i; j++) {
        emoji += '🐢 ';
      }
    } else {
      for (int j = 10; j >= i; j--) {
        emoji += '🐢 ';
      }
    }
    print(emoji);
  }
}

  // while loop

