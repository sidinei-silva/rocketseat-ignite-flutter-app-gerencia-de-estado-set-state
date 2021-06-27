class GerenciaDeEstado {
  var _state;
  var _listens = <Function>[];

  get state => this._state;

  void setState(var value) {
    this._state = value;
    _update();
  }

  void _update() {
    for (var interator = 0; interator < _listens.length; interator++) {
      _listens[interator](_state);
    }
  }

  void listen(void Function(dynamic state) onUpdate) {
    _listens.add(onUpdate);
  }
}
