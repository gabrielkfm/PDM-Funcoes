import 'dart:io';

List<num> maximoMinimo(List<num> numeros) {
  num max = numeros[0];
  num min = numeros[0];
  for (num n in numeros) {
    if (n > max) max = n;
    if (n < min) min = n;
  }
  return [max, min];
}

void main() {
  stdout.write('Quantos números deseja inserir? ');
  int qtd = int.parse(stdin.readLineSync()!);
  List<num> lista = [];
  for (int i = 0; i < qtd; i++) {
    stdout.write('Digite o número ${i + 1}: ');
    lista.add(num.parse(stdin.readLineSync()!));
  }
  List<num> resultado = maximoMinimo(lista);
  print('Máximo: ${resultado[0]}, Mínimo: ${resultado[1]}');
}
