import 'dart:io';

import 'package:revisao_desafio/models/car.dart';
import 'package:revisao_desafio/models/driver.dart';

void main() {
  print('Voce deseja realizar uma corrida? Sim ou Nao');
  String? resposta = stdin.readLineSync();

  if (resposta == "Sim" || resposta == 'S') {
    carregando('Buscando seu motorista...');
    Carro sandero = Carro(modelo: 'Sandero', cor: 'azul', id: 'FLM-2599');

    Motorista motorista =
        Motorista(nome: 'Uandeo', avaliacao: 4.9, genero: 'M', carro: sandero);
    mostrarInfoMotorista(motorista);
    print('Sua corrida foi iniciada');
    carregando('Dirigindo.....');
    print('Sua corrida foi finaliza. Até logo!');
    exit(0);

    // continua
  } else if (resposta == 'Nao' || resposta == 'N') {
    exit(0);
  } else {
    print('Resposta inválida');
    main(); // RECURSÃO
  }
}

void carregando(String msg) {
  for (var count = 1; count <= 5; count++) {
    print(msg);
    espere(2);
  }
}

void espere(int segundos) {
  sleep(Duration(seconds: segundos));
}

void mostrarInfoMotorista(Motorista motorista) {
  print(
      ''' Seu Motorista é: ${motorista.nome} \n
    Avaliação: ${motorista.avaliacao} \n
    Carro: ${motorista.carro.modelo} ${motorista.carro.cor} ${motorista.carro.id} \n
''');
}
