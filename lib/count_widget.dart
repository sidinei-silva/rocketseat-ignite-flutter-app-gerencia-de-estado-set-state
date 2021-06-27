import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  final int value;

  const CountWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$value',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
