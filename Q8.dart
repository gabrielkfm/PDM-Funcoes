import 'dart:io';

int calcularEnergia(int nivel, List<int> valoresBase) {
  Set<int> multiplos = {};
  for (int valor in valoresBase) {
    for (int i = valor; i < nivel; i += valor) {
      multiplos.add(i);
    }
  }
  int soma = 0;
  for (int m in multiplos) {
    soma += m;
  }
  return soma;
}

void main() {
  stdout.write('Digite o número do nível: ');
  int nivel = int.parse(stdin.readLineSync()!);
  stdout.write('Quantos itens mágicos foram encontrados? ');
  int qtd = int.parse(stdin.readLineSync()!);
  List<int> valores = [];
  for (int i = 0; i < qtd; i++) {
    stdout.write('Digite o valor base do item ${i + 1}: ');
    valores.add(int.parse(stdin.readLineSync()!));
  }
  print('Pontos de energia: ${calcularEnergia(nivel, valores)}');
}
