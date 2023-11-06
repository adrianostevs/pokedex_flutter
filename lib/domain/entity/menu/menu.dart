import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu.freezed.dart';

@freezed
class Menu with _$Menu {
  factory Menu({
    required int id,
    required String title,
    required String assets,
  }) = _Menu;
}
