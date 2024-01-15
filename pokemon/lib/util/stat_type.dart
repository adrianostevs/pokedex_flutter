import 'package:flutter/material.dart';
import 'package:pokemon/util/colors.dart';

extension StatType on String {
  Color get getStatType {
    switch (this) {
      case 'hp':
        return AppColors.hp;
      case 'defense':
        return AppColors.defense;
      case 'attack':
        return AppColors.attack;
      case 'speed':
        return AppColors.speed;
      case 'special-attack':
        return AppColors.specialAttack;
      case 'special-defense':
        return AppColors.specialDefense;
      default:
        return AppColors.attack;
    }
  }

  String get getStatName {
    switch (this) {
      case 'hp':
        return 'HP';
      case 'defense':
        return 'Defense';
      case 'attack':
        return 'Attack';
      case 'speed':
        return 'Speed';
      case 'special-attack':
        return 'Sp. Attack';
      case 'special-defense':
        return 'Sp. Defense';
      default:
        return '';
    }
  }
}
