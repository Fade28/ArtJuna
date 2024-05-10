import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/datasource/login_remote_datas.dart';
import 'package:shop_app/models/response/login_respon_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRemoteDatas loginRemoteDatas;
  LoginBloc(
    this.loginRemoteDatas,
  ) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      // await Future.delayed(const Duration(seconds: 3));
      final result = await loginRemoteDatas.login(
        event.email,
        event.password,
      );
      result.fold(
        (error) => emit(_Error(error)),
        (success) => emit(_Success(success)),
      );
    });
  }
}
