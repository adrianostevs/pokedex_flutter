import 'package:flutter/material.dart';
import 'package:pokedex_flutter/domain/entity/menu/menu.dart';
import 'package:pokedex_flutter/gen/assets.gen.dart';
import 'package:pokedex_flutter/gen/fonts.gen.dart';
import 'package:pokedex_flutter/ui/main/main_menu.dart';
import 'package:pokedex_flutter/util/style/colors.dart';
import 'package:pokedex_flutter/util/style/text_styles.dart';
import 'package:pokemon/pokemon.dart' as pokemon;

class MainScreen extends StatelessWidget {
  static const routeName = '/main';
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.images.pokeball.path,
              color: const Color.fromRGBO(0, 0, 0, 0.1),
              repeat: ImageRepeat.repeat,
              scale: 9,
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    const Text(
                      'Pokedex',
                      style: TextStyle(
                        fontFamily: FontFamily.pokemon,
                        fontSize: 52,
                        color: Color.fromRGBO(249, 218, 68, 1),
                      ),
                    ),
                    Text(
                      'Pokedex',
                      style: TextStyle(
                          fontFamily: FontFamily.pokemon,
                          fontSize: 52,
                          foreground: Paint()
                            ..strokeWidth = 2.5
                            ..color = const Color.fromRGBO(68, 125, 249, 1)
                            ..style = PaintingStyle.stroke),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: mainMenu.length,
                    itemBuilder: (context, index) {
                      return _itemMenu(mainMenu[index], context);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _itemMenu(Menu menu, BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigate(menu, context);
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: const Color.fromRGBO(110, 101, 128, 1), width: 8),
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Row(
          children: [
            Image.asset(
              menu.assets,
              width: 36,
              height: 36,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              menu.title,
              style: AppTextStyle.bold(
                  fontSize: 16, color: AppColors.mainTextColor),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_right_rounded,
              size: 36,
              color: AppColors.mainTextColor,
            )
          ],
        ),
      ),
    );
  }

  void navigate(Menu menu, BuildContext context) {
    switch (menu.id) {
      case 1:
        Navigator.pushNamed(context, pokemon.MainScreen.routeName);
        break;
      case 2:
        Navigator.pushNamed(context, routeName);
        break;
    }
  }
}
