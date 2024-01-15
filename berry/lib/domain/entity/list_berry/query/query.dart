import 'package:freezed_annotation/freezed_annotation.dart';

part 'query.freezed.dart';

@freezed
class Query with _$Query {
  factory Query({
    required int offset,
    required int limit,
  }) = _Query;
}
