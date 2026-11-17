import 'package:flutter/material.dart';

const Color _colorSelected = Color(0xFF37648F);
const List<Color> colorList = [
  Color(0xFF37648F),
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < colorList.length);

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: selectedColor == 0 ? _colorSelected : colorList[selectedColor],
      ),
      scaffoldBackgroundColor: const Color(0xFFF7F8FF),
    );
  }
}
