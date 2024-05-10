import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/datasource/budaya_remote_datas.dart';
import 'package:shop_app/models/response/budaya_respon_model.dart';

part 'budaya_event.dart';
part 'budaya_state.dart';
part 'budaya_bloc.freezed.dart';

class BudayaBloc extends Bloc<BudayaEvent, BudayaState> {
  final BudayaRemotDatas budayaRemotDatas;
  BudayaBloc(this.budayaRemotDatas) : super(_Initial()) {
    on<_GetBudaya>((event, emit) async {
      emit(const _Loading());
      final result = await budayaRemotDatas.getBudaya();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
