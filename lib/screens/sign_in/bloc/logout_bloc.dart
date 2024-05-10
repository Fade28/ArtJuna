import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/datasource/login_local_datas.dart';
import 'package:shop_app/datasource/login_remote_datas.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final LoginLocalDataSource localDataSource;
  LogoutBloc(this.localDataSource) : super(_Initial()) {
    on<_Logout>((event, emit) async {
      emit(const _Loading());
      await Future.delayed(const Duration(seconds: 3));
      localDataSource.removeAuthData();
      // final result = await loginRemoteDatasource.logout();
      emit(const _Success());
    });
  }
}
