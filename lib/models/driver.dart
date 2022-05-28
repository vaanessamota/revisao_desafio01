import 'package:revisao_desafio/models/car.dart';

class Motorista {
  final String nome;
  final String genero;
  final double avaliacao;
  final Carro carro;

  Motorista(
      {required this.nome,
      required this.genero,
      required this.avaliacao,
      required this.carro});
}
