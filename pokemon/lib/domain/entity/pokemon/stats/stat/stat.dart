import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat.freezed.dart';

@freezed
class Stat with _$Stat {
  factory Stat({
    required String name,
    required String url,
  }) = _Stat;
}
