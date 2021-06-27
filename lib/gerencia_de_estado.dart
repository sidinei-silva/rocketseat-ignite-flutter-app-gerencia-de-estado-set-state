class GerenciaDeEstado<T> {
  late T _state;
  var _listens = <Function(T state)>[];

  GerenciaDeEstado({required T initialState}) {
    this._state = initialState;
  }

  get state => this._state;

  void setState(T value) {
    this._state = value;
    _update();
  }

  void _update() {
    for (var interator = 0; interator < _listens.length; interator++) {
      _listens[interator](_state);
    }
  }

  void listen(
    void Function(T state) onUpdate,
  ) {
    _listens.add(onUpdate);
  }
}
