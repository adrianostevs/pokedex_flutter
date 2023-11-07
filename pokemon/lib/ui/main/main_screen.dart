import 'package:flutter/material.dart';
import 'package:pokemon/ui/main/main_provider.dart';
import 'package:shared_dependency/shared_dependency.dart';

class MainScreen extends ConsumerWidget {
  static const routeName = '/pokemon/main';
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        MainProvider provider = ref.watch(mainProvider);
        return Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  Assets.images.pokeball.path,
                  color: const Color.fromRGBO(0, 0, 0, 0.1),
                  repeat: ImageRepeat.repeat,
                  scale: 9,
                ),
              ),
              if (provider.listPokemons.results.isNotEmpty) ...{
                GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container();
                    })
              }
            ],
          ),
        );
      },
    );
  }
}
