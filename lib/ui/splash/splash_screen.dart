import 'package:flutter/material.dart';
import 'package:pokedex_flutter/gen/assets.gen.dart';
import 'package:pokedex_flutter/gen/fonts.gen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000), () {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Pokedex',
            style: TextStyle(fontFamily: FontFamily.pokemon),
          ),
        ),
      ),
    );
  }
}
