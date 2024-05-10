import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/response/budaya_respon_model.dart';

class BudayaRemotDatas {
  Future<Either<String, BudayaResponModel>> getBudaya() async {
    final url = Uri.parse('${Variables.baseUrl}/API/apiBudaya');
    final response = await http.get(url);
    print("ambil data budaya");
    if (response.statusCode == 200) {
      return Right(BudayaResponModel.fromJson(response.body));
    } else {
      return const Left('Failed to get products');
    }
  }
}
