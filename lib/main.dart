import 'package:app/presentation/screens/revelare_screen.dart';
import 'package:app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(
  const ProviderScope(child: MyApp())
  );

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
