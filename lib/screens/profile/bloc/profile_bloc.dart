import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/datasource/login_local_datas.dart';
import 'package:shop_app/models/response/login_respon_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final LoginLocalDataSource loginLocalDataSource;
  ProfileBloc(this.loginLocalDataSource) : super(_Initial()) {
    on<_Getdata>((event, emit) async {
      // emit(const _Loading());
      // await Future.delayed(const Duration(seconds: 3));
      await LoginLocalDataSource().isAuthDataExists().then((value) async {
        if (value) {
          await loginLocalDataSource
              .getAuthData()
              .then((result) => emit(_Success(result.user!)));
        } else {
          emit(const _Loading());
        }
      });
    });
  }
}
