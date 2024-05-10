part of 'budaya_bloc.dart';

@freezed
class BudayaState with _$BudayaState {
  const factory BudayaState.initial() = _Initial;
  const factory BudayaState.loading() = _Loading;
  const factory BudayaState.loaded(BudayaResponModel budayaResponModel) =
      _Loaded;
  const factory BudayaState.error(String message) = _Error;
}
