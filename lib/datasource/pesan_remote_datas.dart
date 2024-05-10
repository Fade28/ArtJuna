import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/response/ajuka_respon_model.dart';
import 'package:shop_app/models/response/pesan_detail_respon_model.dart';
import 'package:shop_app/models/response/pesan_respon_model.dart';

class PesanRemoteDatas {
  Future<Either<String, PesanResponModel>> getPesan(
    String id_user,
  ) async {
    print("Coba konek");
    final url = Uri.parse('${Variables.baseUrl}/API/apiPesan/$id_user');
    final response = await http.get(url);
    print("Coba ambil Pesan");
    if (response.statusCode == 200) {
      return Right(PesanResponModel.fromJson(response.body));
    } else {
      return const Left('Gagal Mengambil pesan');
    }
  }

  Future<Either<String, PesanDetailResponModel>> getPesanDetail(
    String id_pesan,
  ) async {
    print("Coba konek");
    final url = Uri.parse('${Variables.baseUrl}/API/apiPesanDetail/$id_pesan');
    final response = await http.get(url);
    print("Coba ambil Pesan Detail");
    if (response.statusCode == 200) {
      return Right(PesanDetailResponModel.fromJson(response.body));
    } else {
      return const Left('Gagal Mengambil pesan Detail');
    }
  }

  Future<Either<String, AjukanResponModel>> kirimPesan(
    String idg,
    String id,
    String pesan,
  ) async {
    print("Coba konek");
    final url = Uri.parse('${Variables.baseUrl}/API/apiPesanDetail');
    final response = await http.post(
      url,
      body: {
        'idg': idg,
        'id': id,
        'pesan': pesan,
      },
    );
    print("Coba Kirim");
    if (response.statusCode == 200) {
      print("respon 200");
      return Right(AjukanResponModel.fromJson(response.body));
    } else {
      print("respon eror");
      return const Left('Failed to send');
    }
  }
}
