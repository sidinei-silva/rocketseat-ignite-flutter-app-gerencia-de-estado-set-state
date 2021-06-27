import 'package:flutter_test/flutter_test.dart';
import 'package:gerencia_de_estado/gerencia_de_estado.dart';

void main() {
  late GerenciaDeEstado controller;

  setUp(() {
    controller = GerenciaDeEstado<String>(initialState: "");
  });

  test("Testando a genrencia de estado", () {
    final valueStateFirst = "Alterado";
    final valueStateFinal = "Alterado2";

    expect(controller.state, "");

    controller.listen((state) {
      print("Listen 1 $state");
    });

    controller.setState(valueStateFirst);

    controller.listen((state) {
      print("Listen 2 $state");
    });

    controller.setState(valueStateFinal);
    expect(controller.state, valueStateFinal);
  });
}
