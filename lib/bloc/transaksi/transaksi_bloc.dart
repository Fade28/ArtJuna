import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/datasource/trans_remote_datas.dart';
import 'package:shop_app/models/response/trans_respon_model.dart';

part 'transaksi_event.dart';
part 'transaksi_state.dart';
part 'transaksi_bloc.freezed.dart';

class TransaksiBloc extends Bloc<TransaksiEvent, TransaksiState> {
  final TransRemoteDatas transRemoteDatas;
  TransaksiBloc(this.transRemoteDatas) : super(_Initial()) {
    on<_GetTrans>((event, emit) async {
      emit(const _Loading());
      final result = await transRemoteDatas.getTrans(event.id);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
