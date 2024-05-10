part of 'ajukan_bloc.dart';

@freezed
class AjukanState with _$AjukanState {
  const factory AjukanState.initial() = _Initial;
  const factory AjukanState.loading() = _Loading;
  const factory AjukanState.success(AjukanResponModel ajukanResponseModel) =
      _Success;
  const factory AjukanState.error(String message) = _Error;
}
