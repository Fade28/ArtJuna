part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.loadsend() = _Loadsend;
  const factory ChatState.loaded(
      PesanDetailResponModel pesanDetailResponModel) = _Loaded;
  const factory ChatState.sukses(AjukanResponModel ajukanResponModel) =
      _Success;
  const factory ChatState.error(String message) = _Error;
}
