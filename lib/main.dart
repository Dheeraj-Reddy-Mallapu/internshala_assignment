import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala_assignment/routes/router.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: ThemeData(
          useMaterial3: true, colorScheme: _colorScheme(Brightness.light)),
      darkTheme: ThemeData(
          useMaterial3: true, colorScheme: _colorScheme(Brightness.dark)),
      routerConfig: ref.watch(routerProvider),
    );
  }
}

ColorScheme _colorScheme(Brightness brightness) => ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 0, 165, 236), brightness: brightness);
