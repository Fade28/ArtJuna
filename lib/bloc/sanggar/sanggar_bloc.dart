import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/datasource/sanggar_remote_datas.dart';
import 'package:shop_app/models/response/sanggar_respon_model.dart';

part 'sanggar_event.dart';
part 'sanggar_state.dart';
part 'sanggar_bloc.freezed.dart';

class SanggarBloc extends Bloc<SanggarEvent, SanggarState> {
  final SanggarRemoteDatas sanggarRemoteDatas;
  SanggarBloc(this.sanggarRemoteDatas) : super(_Loading()) {
    on<_GetSanggar>((event, emit) async {
      emit(const _Loading());
      final result = await sanggarRemoteDatas.getSanggar();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
