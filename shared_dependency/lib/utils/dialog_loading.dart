import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_dependency/gen/fonts.gen.dart';
import 'package:shared_dependency/shared_dependency.dart';

class DialogLoading {
  final BuildContext context;

  DialogLoading({required this.context});

  void showLoading() {
    showDialog(
        context: context,
        builder: (context) {
          return dialog();
        },
        barrierDismissible: false);
  }

  void dismissLoading() {
    Navigator.of(context).pop();
  }

  Widget dialog() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Gotta catch 'em all!",
              style: TextStyle(fontFamily: FontFamily.pokemonClassic),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Lottie.asset(
                Assets.lottie.pokeballLoadingNew,
                repeat: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
