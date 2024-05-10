part of 'sanggar_bloc.dart';

@freezed
class SanggarState with _$SanggarState {
  const factory SanggarState.initial() = _Initial;
  const factory SanggarState.loading() = _Loading;
  const factory SanggarState.loaded(SanggarResponModel sanggarResponModel) =
      _Loaded;
  const factory SanggarState.error(String message) = _Error;
}
