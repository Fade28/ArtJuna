import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/response/register_respon_model.dart';

class RegisterRemoteDatas {
  Future<Either<String, RegisterResponModel>> daftar(
    String nama,
    String email,
    String alamat,
    String nohp,
    String pass,
  ) async {
    print("Coba konek");
    final url = Uri.parse('${Variables.baseUrl}/API/apiUser');
    final response = await http.post(
      url,
      body: {
        'nama': nama,
        'alamat': alamat,
        'email': email,
        'pass': pass,
        'nohp': nohp,
      },
    );
    print("Coba daftar");
    print(response.body.toString());
    if (response.statusCode == 200) {
      return Right(RegisterResponModel.fromJson(response.body));
    } else {
      return Left(response.body.toString());
    }
  }
}
