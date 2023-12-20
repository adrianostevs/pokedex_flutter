import 'package:flutter/material.dart';
import 'package:pokemon/domain/entity/pokemon/stats/stats.dart';
import 'package:pokemon/domain/entity/pokemon/types/types.dart';
import 'package:pokemon/ui/main/main_provider.dart';
import 'package:pokemon/util/int_extension.dart';
import 'package:pokemon/util/pokemon_type.dart';
import 'package:pokemon/util/stat_type.dart';
import 'package:pokemon/util/string_extension.dart';
import 'package:pokemon/util/text_style.dart';
import 'package:shared_dependency/shared_dependency.dart';

class DetailScreen extends ConsumerWidget {
  static const routeName = 'pokemon/detail';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemon = ref.watch(pokemonProvider);
    List<Widget> widget = [];
    for (var i in pokemon.types) {
      widget.add(_typePokemon(i));
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: pokemon.types[0].type.name.getPokemonTypeColors,
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
          Container(
            height: 100,
            margin: const EdgeInsets.only(
                top: 112, left: 16, right: 16, bottom: 24),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Center(
                  child: Text(
                    pokemon.name.uppercaseText,
                    style: TextStyles.regular(
                        fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widget,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      pokemon.height.getPokemonHeight(),
                      style: TextStyles.regular(fontSize: 10),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text('|'),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      pokemon.weight.getPokemonWeight(),
                      style: TextStyles.regular(fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: Text(
                    'Base Stats',
                    style: TextStyles.regular(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: pokemon.stats.length,
                    itemBuilder: (context, index) {
                      return _statsBar(pokemon.stats[index]);
                    },
                  ),
                )
              ],
            ),
          ),
          Image.network(
            pokemon.id.toString().getPokemonImage(),
            alignment: Alignment.topCenter,
            scale: 2.5,
          )
        ],
      ),
    );
  }

  Widget _typePokemon(Types types) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
          color: types.type.name.getPokemonTypeColors,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Text(
        types.type.name.uppercaseText,
        style: TextStyles.regular(color: Colors.white, fontSize: 10),
      ),
    );
  }

  Widget _statsBar(Stats stats) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: Text(
              stats.stat.name.getStatName,
              style: TextStyles.regular(fontSize: 10),
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    tween: Tween<double>(begin: 0, end: stats.base_stat / 300),
                    builder: (context, value, child) {
                      return LinearProgressIndicator(
                        minHeight: 24,
                        value: value,
                        color: stats.stat.name.getStatType,
                        backgroundColor: const Color.fromRGBO(210, 210, 210, 1),
                      );
                    },
                  ),
                ),
                Center(
                  child: Text(
                    '${stats.base_stat} / 300',
                    style: TextStyles.regular(fontSize: 8, color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
