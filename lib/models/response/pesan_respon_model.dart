import 'dart:convert';

class PesanResponModel {
  final String? status;
  final List<Pesan>? pesan;

  PesanResponModel({
    this.status,
    this.pesan,
  });

  factory PesanResponModel.fromJson(String str) =>
      PesanResponModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PesanResponModel.fromMap(Map<String, dynamic> json) =>
      PesanResponModel(
        status: json["status"],
        pesan: json["pesan"] == null
            ? []
            : List<Pesan>.from(json["pesan"]!.map((x) => Pesan.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "pesan": pesan == null
            ? []
            : List<dynamic>.from(pesan!.map((x) => x.toMap())),
      };
}

class Pesan {
  final String? idPesanGrup;
  final String? foto;
  final String? nama;
  final String? pesan;

  Pesan({
    this.idPesanGrup,
    this.foto,
    this.nama,
    this.pesan,
  });

  factory Pesan.fromJson(String str) => Pesan.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pesan.fromMap(Map<String, dynamic> json) => Pesan(
        idPesanGrup: json["Id_PesanGrup"],
        foto: json["foto"],
        nama: json["nama"],
        pesan: json["pesan"],
      );

  Map<String, dynamic> toMap() => {
        "Id_PesanGrup": idPesanGrup,
        "foto": foto,
        "nama": nama,
        "pesan": pesan,
      };
}
