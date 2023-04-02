import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const GpsDoMundo());
}

class GpsDoMundo extends StatelessWidget {
  // 2
  const GpsDoMundo({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = GpsdoMundoTheme.dark();

    return MaterialApp(
      theme: theme,
      title: 'Gps do Mundo',
      home: const Home(),
    );
    // 3
  }
}
