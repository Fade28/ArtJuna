part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.daftar({
    required String nama,
    required String email,
    required String alamat,
    required String nohp,
    required String pass,
  }) = _Daftar;
}
