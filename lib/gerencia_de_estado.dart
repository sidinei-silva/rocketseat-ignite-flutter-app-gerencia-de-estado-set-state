class GerenciaDeEstado {
  var _state;
  var _onUpdate;

  get state => this._state;

  void setState(var value) {
    this._state = value;
    if (_onUpdate != null) {
      _onUpdate(value);
    }
  }

  void listen(void Function(dynamic state) onUpdate) {
    _onUpdate = onUpdate;
  }
}
