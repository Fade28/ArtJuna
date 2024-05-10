part of 'pesan_bloc.dart';

@freezed
class PesanEvent with _$PesanEvent {
  const factory PesanEvent.started() = _Started;
  const factory PesanEvent.getPesan({required String id}) = _GetPesan;
}
