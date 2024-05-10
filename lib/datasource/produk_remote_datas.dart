import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/response/produk_respon_model.dart';

class ProdukRemoteDatas {
  Future<Either<String, ProdukResponModel>> getProducts(String id) async {
    final url = Uri.parse('${Variables.baseUrl}/API/apiProduk/${id}');
    final response = await http.get(url);
    print("ambil data produk");
    if (response.statusCode == 200) {
      return Right(ProdukResponModel.fromJson(response.body));
    } else {
      return const Left('Failed to get products');
    }
  }
}
