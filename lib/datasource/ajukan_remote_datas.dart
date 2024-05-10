import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/response/ajuka_respon_model.dart';

class AjukanRemoteDatas {
  Future<Either<String, AjukanResponModel>> ajukan(
    String id_san,
    String id_user,
    String id_pro,
    String tgl_mulai,
    String tgl_akhir,
    String harga,
  ) async {
    print("Coba konek");
    final url = Uri.parse('${Variables.baseUrl}/API/apiTransaksi');
    final response = await http.post(
      url,
      body: {
        'Id_san': id_san,
        'Id_user': id_user,
        'Id_pro': id_pro,
        'tgl_mulai': tgl_mulai,
        'tgl_akhir': tgl_akhir,
        'harga': harga,
      },
    );
    print("Coba ajukan");
    if (response.statusCode == 200) {
      return Right(AjukanResponModel.fromJson(response.body));
    } else {
      return const Left('Gagal Mengajukan');
    }
  }
}
