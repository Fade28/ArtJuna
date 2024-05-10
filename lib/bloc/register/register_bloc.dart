import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/datasource/register_remote_datas.dart';
import 'package:shop_app/models/response/register_respon_model.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterRemoteDatas registerremotdatas;
  RegisterBloc(this.registerremotdatas) : super(_Initial()) {
    on<_Daftar>((event, emit) async {
      emit(const _Loading());
      await Future.delayed(const Duration(seconds: 3));
      final result = await registerremotdatas.daftar(
        event.nama,
        event.email,
        event.alamat,
        event.nohp,
        event.pass,
      );
      result.fold(
        (error) => emit(_Error(error)),
        (success) => emit(_Success(success)),
      );
    });
  }
}
