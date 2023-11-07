import 'package:flutter/material.dart';
import 'package:pokedex_flutter/gen/assets.gen.dart';
import 'package:pokedex_flutter/gen/fonts.gen.dart';
import 'package:pokedex_flutter/ui/main/main_screen.dart';
import 'package:shared_dependency/shared_dependency.dart' as shared;

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Offset>? _offsetAnimation;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushNamed(context, MainScreen.routeName);
    });
    _animated();
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _animated() {
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 300),
        lowerBound: 0,
        upperBound: 1)
      ..repeat(reverse: true);
    _offsetAnimation = Tween<Offset>(
            begin: Offset.zero, end: const Offset(0.0, -0.2))
        .animate(CurvedAnimation(parent: _controller!, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: _offsetAnimation!,
                child: Image.asset(
                  Assets.images.pokedexIcon.path,
                  scale: 1,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Stack(
                children: [
                  shared.AnimatedTextKit(
                    animatedTexts: [
                      shared.TyperAnimatedText(
                        'Pokedex',
                        textStyle: const TextStyle(
                          fontFamily: FontFamily.pokemon,
                          fontSize: 52,
                          color: Color.fromRGBO(249, 218, 68, 1),
                        ),
                        speed: const Duration(milliseconds: 100),
                      )
                    ],
                    totalRepeatCount: 1,
                    isRepeatingAnimation: false,
                  ),
                  shared.AnimatedTextKit(
                    animatedTexts: [
                      shared.TyperAnimatedText(
                        'Pokedex',
                        textStyle: TextStyle(
                            fontFamily: FontFamily.pokemon,
                            fontSize: 52,
                            foreground: Paint()
                              ..strokeWidth = 2.5
                              ..color = const Color.fromRGBO(68, 125, 249, 1)
                              ..style = PaintingStyle.stroke),
                        speed: const Duration(milliseconds: 100),
                      )
                    ],
                    totalRepeatCount: 1,
                    isRepeatingAnimation: false,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
