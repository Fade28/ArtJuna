import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/response/login_respon_model.dart';

class LoginRemoteDatas {
  Future<Either<String, LoginResponModel>> login(
      String email, String password) async {
    print("Coba konek");
    final url = Uri.parse('${Variables.baseUrl}/apimasuk');
    final response = await http.post(
      url,
      body: {
        'email': email,
        'pass': password,
      },
    );
    print("Coba konek");
    if (response.statusCode == 200) {
      return Right(LoginResponModel.fromJson(response.body));
    } else {
      return const Left('Failed to login');
    }
  }
}
