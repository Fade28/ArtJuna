part of 'produk_bloc.dart';

@freezed
class ProdukState with _$ProdukState {
  const factory ProdukState.initial() = _Initial;
  const factory ProdukState.loading() = _Loading;
  const factory ProdukState.loaded(ProdukResponModel produkResponModel) =
      _Loaded;
  const factory ProdukState.error(String message) = _Error;
}
