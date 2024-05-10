import 'dart:convert';

class SanggarResponModel {
  final String? status;
  final List<Sanggar>? sanggar;

  SanggarResponModel({
    this.status,
    this.sanggar,
  });

  factory SanggarResponModel.fromJson(String str) =>
      SanggarResponModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SanggarResponModel.fromMap(Map<String, dynamic> json) =>
      SanggarResponModel(
        status: json["status"],
        sanggar: json["sanggar"] == null
            ? []
            : List<Sanggar>.from(
                json["sanggar"]!.map((x) => Sanggar.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "sanggar": sanggar == null
            ? []
            : List<dynamic>.from(sanggar!.map((x) => x.toMap())),
      };
}

class Sanggar {
  final String? idSanggar;
  final String? namaSanggar;
  final String? alamatSanggar;
  final String? nohpSanggar;
  final String? fotoSanggar;

  Sanggar({
    this.idSanggar,
    this.namaSanggar,
    this.alamatSanggar,
    this.nohpSanggar,
    this.fotoSanggar,
  });

  factory Sanggar.fromJson(String str) => Sanggar.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Sanggar.fromMap(Map<String, dynamic> json) => Sanggar(
        idSanggar: json["Id_Sanggar"],
        namaSanggar: json["Nama_Sanggar"],
        alamatSanggar: json["Alamat_Sanggar"],
        nohpSanggar: json["Nohp_Sanggar"],
        fotoSanggar: json["Foto_Sanggar"],
      );

  Map<String, dynamic> toMap() => {
        "Id_Sanggar": idSanggar,
        "Nama_Sanggar": namaSanggar,
        "Alamat_Sanggar": alamatSanggar,
        "Nohp_Sanggar": nohpSanggar,
        "Foto_Sanggar": fotoSanggar,
      };
}
