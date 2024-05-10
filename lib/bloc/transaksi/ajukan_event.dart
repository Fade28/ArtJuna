part of 'ajukan_bloc.dart';

@freezed
class AjukanEvent with _$AjukanEvent {
  const factory AjukanEvent.started() = _Started;
  const factory AjukanEvent.ajukan({
    required String id_san,
    required String id_user,
    required String id_pro,
    required String tgl_mulai,
    required String tgl_akhir,
    required String harga,
  }) = _Ajukan;
}
