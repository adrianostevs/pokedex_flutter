import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState<T> with _$ViewState<T> {
  factory ViewState.initial() = _ViewStateInitial<T>;
  factory ViewState.loading() = _ViewStateLoading;
  factory ViewState.success({required T data}) = _ViewStateSuccess<T>;
  factory ViewState.error({required String message}) = _ViewStateError;
}
