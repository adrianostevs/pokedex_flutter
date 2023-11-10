import 'package:flutter/material.dart';
import 'package:pokemon/util/colors.dart';

extension PokemonType on String {
  Color get getPokemonTypeColors {
    switch (this) {
      case 'bug':
        return AppColors.bug;
      case 'dark':
        return AppColors.dark;
      case 'dragon':
        return AppColors.dragon;
      case 'electric':
        return AppColors.electric;
      case 'fairy':
        return AppColors.fairy;
      case 'fighting':
        return AppColors.fighting;
      case 'fire':
        return AppColors.fire;
      case 'flying':
        return AppColors.flying;
      case 'ghost':
        return AppColors.ghost;
      case 'grass':
        return AppColors.grass;
      case 'ground':
        return AppColors.ground;
      case 'ice':
        return AppColors.ice;
      case 'poison':
        return AppColors.poison;
      case 'psychic':
        return AppColors.psychic;
      case 'rock':
        return AppColors.rock;
      case 'steel':
        return AppColors.steel;
      case 'water':
        return AppColors.water;
      default:
        return AppColors.bug;
    }
  }
}
