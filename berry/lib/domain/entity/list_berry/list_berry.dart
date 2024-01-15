import 'package:berry/domain/entity/list_berry/result/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_berry.freezed.dart';

@freezed
class ListBerry with _$ListBerry {
  factory ListBerry({
    required int count,
    required List<Result> results,
  }) = _ListBerry;
}
