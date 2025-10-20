import 'dart:io';

double idade(double segundos, String planeta) {
  const segundosT= 31557600;
  const orbitas = {
    'Mercúrio': 0.2408467,
    'Vênus': 0.61519726,
    'Terra': 1.0,
    'Marte': 1.8808158,
    'Júpiter': 11.862615,
    'Saturno': 29.447498,
    'Urano': 84.016846,
    'Netuno': 164.79132
  };
  return segundos / (segundosT * (orbitas[planeta] ?? 1));
}

void main() {
  stdout.write('Digite sua idade em segundos: ');
  double segundos = double.parse(stdin.readLineSync()!);
  stdout.write('Digite o nome do planeta: ');
  String planeta = stdin.readLineSync()!;
  print('Idade em $planeta: ${idade(segundos, planeta)} anos');
}
