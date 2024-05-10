part of 'transaksi_bloc.dart';

@freezed
class TransaksiEvent with _$TransaksiEvent {
  const factory TransaksiEvent.started() = _Started;
  const factory TransaksiEvent.getTrans({required String id}) = _GetTrans;
}
