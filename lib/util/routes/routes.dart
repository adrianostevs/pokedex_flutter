import 'package:flutter/widgets.dart';
import 'package:pokedex_flutter/ui/main/main_screen.dart';
import 'package:pokedex_flutter/ui/splash/splash_screen.dart';
import 'package:pokemon/pokemon.dart' as pokemon;
import 'package:berry/berry.dart' as berry;

Map<String, WidgetBuilder> routes() {
  return {
    //MAIN MODULE
    SplashScreen.routeName: (context) => const SplashScreen(),
    MainScreen.routeName: (context) => const MainScreen(),

    //POKEMON MODULE
    pokemon.MainScreen.routeName: (context) => const pokemon.MainScreen(),
    pokemon.DetailScreen.routeName: (context) => const pokemon.DetailScreen(),

    //BERRY MODULE
    berry.MainScreen.routeName: (context) => const berry.MainScreen(),
  };
}
