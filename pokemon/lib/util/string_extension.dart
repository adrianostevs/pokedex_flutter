import 'package:network/service/api_constants.dart';

extension StringExtension on String {
  String getPokemonImage() {
    if (contains('https://pokeapi.co/api/v2/pokemon/')) {
      String id = replaceAll('https://pokeapi.co/api/v2/pokemon/', '');
      String newId = id.substring(0, id.length - 1);
      String pokemonUrl = ApiConstants.IMAGE_URL.replaceAll('index', newId);
      return pokemonUrl;
    } else {
      String pokemonUrl = ApiConstants.IMAGE_URL.replaceAll('index', this);
      return pokemonUrl;
    }
  }

  String get uppercaseText {
    String result = this[0].toUpperCase() + substring(1);
    return result;
  }
}
