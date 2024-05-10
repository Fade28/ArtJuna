part of 'pesan_bloc.dart';

@freezed
class PesanState with _$PesanState {
  const factory PesanState.initial() = _Initial;
  const factory PesanState.loading() = _Loading;
  const factory PesanState.loaded(PesanResponModel pesanResponModel) = _Loaded;
  const factory PesanState.error(String message) = _Error;
}
