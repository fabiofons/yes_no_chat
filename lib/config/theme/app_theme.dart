import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 7, 248, 128);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length, 'Seleted Color should be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
