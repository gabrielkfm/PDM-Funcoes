import 'dart:io';

int soma(int a, int b) {
  return a + b;
}

double media(List<int> numeros) {
  int total = 0;
  for (int n in numeros) {
    total = soma(total, n);
  }
  return total / numeros.length;
}

void main() {
  stdout.write('Quantos números deseja inserir? ');
  int qtd = int.parse(stdin.readLineSync()!);
  List<int> lista = [];
  for (int i = 0; i < qtd; i++) {
    stdout.write('Digite o número ${i + 1}: ');
    lista.add(int.parse(stdin.readLineSync()!));
  }
  print('Média: ${media(lista)}');
}
