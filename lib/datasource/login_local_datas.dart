import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/models/response/login_respon_model.dart';

class LoginLocalDataSource {
  Future<void> saveAuthData(LoginResponModel loginResponseModel) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('login_data', loginResponseModel.toJson());
  }

  Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('login_data');
  }

  Future<LoginResponModel> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('login_data');

    return LoginResponModel.fromJson(authData!);
  }

  Future<bool> isAuthDataExists() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('login_data');
  }
}
