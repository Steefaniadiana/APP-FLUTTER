import 'package:app/screens/revelare_screen.dart';
import 'package:app/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vertical Videos App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const RevelareScreen()
    );
  }
}