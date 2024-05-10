part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.getPesan({required String id}) = _GetPesanDetail;
  const factory ChatEvent.sendPesan({
    required String id,
    required String pengirim,
    required String pesan,
  }) = _SendPesan;
}
