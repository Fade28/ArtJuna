import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/datasource/produk_remote_datas.dart';
import 'package:shop_app/models/response/produk_respon_model.dart';

part 'produk_event.dart';
part 'produk_state.dart';
part 'produk_bloc.freezed.dart';

class ProdukBloc extends Bloc<ProdukEvent, ProdukState> {
  final ProdukRemoteDatas productRemoteDatasource;
  ProdukBloc(this.productRemoteDatasource) : super(_Initial()) {
    on<_GetProduk>((event, emit) async {
      emit(const _Loading());
      final result = await productRemoteDatasource.getProducts(event.id);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
