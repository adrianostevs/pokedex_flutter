import 'package:flutter/material.dart';
import 'package:pokedex_flutter/dependency_injection.dart';
import 'package:pokedex_flutter/ui/splash/splash_screen.dart';
import 'package:pokedex_flutter/util/routes/routes.dart';
import 'package:shared_dependency/shared_dependency.dart';

void main() {
  dependencies();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp(
      title: 'Pokedex Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes(),
    ));
  }
}
