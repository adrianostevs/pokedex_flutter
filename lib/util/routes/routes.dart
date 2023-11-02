import 'package:flutter/widgets.dart';
import 'package:pokedex_flutter/ui/splash/splash_screen.dart';

Map<String, WidgetBuilder> routes() {
  return {
    SplashScreen.routeName: (context) => const SplashScreen(),
  };
}
