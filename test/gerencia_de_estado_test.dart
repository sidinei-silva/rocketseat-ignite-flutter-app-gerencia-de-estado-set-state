import 'package:flutter_test/flutter_test.dart';
import 'package:gerencia_de_estado/gerencia_de_estado.dart';

void main() {
  late GerenciaDeEstado controller;

  setUp(() {
    controller = GerenciaDeEstado();
  });

  test("Testando a genrencia de estado", () {
    expect(controller.state, isNull);
    controller.listen((state) {
      expect(controller.state, "Alterado");
    });
    controller.setState("Alterado");
    expect(controller.state, "Alterado");
  });
}
