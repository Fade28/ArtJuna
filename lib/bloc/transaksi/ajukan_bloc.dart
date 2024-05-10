import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/datasource/ajukan_remote_datas.dart';
import 'package:shop_app/models/response/ajuka_respon_model.dart';

part 'ajukan_event.dart';
part 'ajukan_state.dart';
part 'ajukan_bloc.freezed.dart';

class AjukanBloc extends Bloc<AjukanEvent, AjukanState> {
  final AjukanRemoteDatas ajukanRemoteDatas;
  AjukanBloc(this.ajukanRemoteDatas) : super(_Initial()) {
    on<_Ajukan>((event, emit) async {
      emit(const _Loading());
      await Future.delayed(const Duration(seconds: 3));
      final result = await ajukanRemoteDatas.ajukan(event.id_san, event.id_user,
          event.id_pro, event.tgl_mulai, event.tgl_akhir, event.harga);
      result.fold(
        (error) => emit(_Error(error)),
        (success) => emit(_Success(success)),
      );
    });
  }
}
