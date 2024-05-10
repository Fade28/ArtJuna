import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/response/trans_respon_model.dart';

class TransRemoteDatas {
  Future<Either<String, TransResponModel>> getTrans(String id) async {
    final url = Uri.parse('${Variables.baseUrl}/API/apiTransaksi/$id');
    final response = await http.get(url);
    print(url);
    if (response.statusCode == 200) {
      return Right(TransResponModel.fromJson(response.body));
    } else {
      return const Left('Failed to get Trans');
    }
  }
}
