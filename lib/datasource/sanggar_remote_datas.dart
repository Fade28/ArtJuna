import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/response/sanggar_respon_model.dart';

class SanggarRemoteDatas {
  Future<Either<String, SanggarResponModel>> getSanggar() async {
    final url = Uri.parse('${Variables.baseUrl}/API/apiSanggar');
    final response = await http.get(url);
    print("ambil data sanggar");
    if (response.statusCode == 200) {
      return Right(SanggarResponModel.fromJson(response.body));
    } else {
      return const Left('Failed to get sanggar');
    }
  }
}
