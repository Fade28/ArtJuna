import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/datasource/pesan_remote_datas.dart';
import 'package:shop_app/models/response/pesan_respon_model.dart';

part 'pesan_event.dart';
part 'pesan_state.dart';
part 'pesan_bloc.freezed.dart';

class PesanBloc extends Bloc<PesanEvent, PesanState> {
  final PesanRemoteDatas pesanRemoteDatas;
  PesanBloc(this.pesanRemoteDatas) : super(_Initial()) {
    on<_GetPesan>((event, emit) async {
      emit(const _Loading());
      final result = await pesanRemoteDatas.getPesan(event.id);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
