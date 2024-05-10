import 'dart:convert';

class PesanDetailResponModel {
  final String? status;
  final Pro? pro;
  final List<Pesandetail>? pesandetail;

  PesanDetailResponModel({
    this.status,
    this.pro,
    this.pesandetail,
  });

  factory PesanDetailResponModel.fromJson(String str) =>
      PesanDetailResponModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PesanDetailResponModel.fromMap(Map<String, dynamic> json) =>
      PesanDetailResponModel(
        status: json["status"],
        pro: json["pro"] == null ? null : Pro.fromMap(json["pro"]),
        pesandetail: json["pesandetail"] == null
            ? []
            : List<Pesandetail>.from(
                json["pesandetail"]!.map((x) => Pesandetail.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "pro": pro?.toMap(),
        "pesandetail": pesandetail == null
            ? []
            : List<dynamic>.from(pesandetail!.map((x) => x.toMap())),
      };
}

class Pesandetail {
  final String? idPesan;
  final String? idPesanGrup;
  final String? pengirim;
  final String? pesan;
  final DateTime? dibuat;
  final DateTime? diubah;
  final dynamic dihapus;

  Pesandetail({
    this.idPesan,
    this.idPesanGrup,
    this.pengirim,
    this.pesan,
    this.dibuat,
    this.diubah,
    this.dihapus,
  });

  factory Pesandetail.fromJson(String str) =>
      Pesandetail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pesandetail.fromMap(Map<String, dynamic> json) => Pesandetail(
        idPesan: json["Id_Pesan"],
        idPesanGrup: json["Id_PesanGrup"],
        pengirim: json["Pengirim"],
        pesan: json["Pesan"],
        dibuat: json["dibuat"] == null ? null : DateTime.parse(json["dibuat"]),
        diubah: json["diubah"] == null ? null : DateTime.parse(json["diubah"]),
        dihapus: json["dihapus"],
      );

  Map<String, dynamic> toMap() => {
        "Id_Pesan": idPesan,
        "Id_PesanGrup": idPesanGrup,
        "Pengirim": pengirim,
        "Pesan": pesan,
        "dibuat": dibuat?.toIso8601String(),
        "diubah": diubah?.toIso8601String(),
        "dihapus": dihapus,
      };
}

class Pro {
  final String? idSanggar;

  Pro({
    this.idSanggar,
  });

  factory Pro.fromJson(String str) => Pro.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pro.fromMap(Map<String, dynamic> json) => Pro(
        idSanggar: json["Id_Sanggar"],
      );

  Map<String, dynamic> toMap() => {
        "Id_Sanggar": idSanggar,
      };
}
