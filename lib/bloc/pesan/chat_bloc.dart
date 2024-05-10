import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/datasource/pesan_remote_datas.dart';
import 'package:shop_app/models/response/ajuka_respon_model.dart';
import 'package:shop_app/models/response/pesan_detail_respon_model.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final PesanRemoteDatas pesanRemoteDatas;
  ChatBloc(this.pesanRemoteDatas) : super(_Initial()) {
    on<_GetPesanDetail>((event, emit) async {
      emit(const _Loading());
      final result = await pesanRemoteDatas.getPesanDetail(event.id);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });

    on<_SendPesan>((event, emit) async {
      emit(const _Loadsend());
      final result = await pesanRemoteDatas.kirimPesan(
        event.id,
        event.pengirim,
        event.pesan,
      );
      print("sudah respon");
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          print("respon r");
          emit(_Success(r));
        },
      );
    });
  }
}
