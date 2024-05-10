import 'dart:convert';

class BudayaResponModel {
  final String? status;
  final List<Budaya>? budaya;

  BudayaResponModel({
    this.status,
    this.budaya,
  });

  factory BudayaResponModel.fromJson(String str) =>
      BudayaResponModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BudayaResponModel.fromMap(Map<String, dynamic> json) =>
      BudayaResponModel(
        status: json["status"],
        budaya: json["budaya"] == null
            ? []
            : List<Budaya>.from(json["budaya"]!.map((x) => Budaya.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "budaya": budaya == null
            ? []
            : List<dynamic>.from(budaya!.map((x) => x.toMap())),
      };
}

class Budaya {
  final String? idBudaya;
  final String? namaBudaya;
  final String? ketBudaya;
  final String? fotoBudaya;
  final DateTime? dibuat;
  final DateTime? diubah;
  final String? dihapus;

  Budaya({
    this.idBudaya,
    this.namaBudaya,
    this.ketBudaya,
    this.fotoBudaya,
    this.dibuat,
    this.diubah,
    this.dihapus,
  });

  factory Budaya.fromJson(String str) => Budaya.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Budaya.fromMap(Map<String, dynamic> json) => Budaya(
        idBudaya: json["Id_Budaya"],
        namaBudaya: json["Nama_Budaya"],
        ketBudaya: json["Ket_Budaya"],
        fotoBudaya: json["Foto_Budaya"],
        dibuat: json["dibuat"] == null ? null : DateTime.parse(json["dibuat"]),
        diubah: json["diubah"] == null ? null : DateTime.parse(json["diubah"]),
        dihapus: json["dihapus"],
      );

  Map<String, dynamic> toMap() => {
        "Id_Budaya": idBudaya,
        "Nama_Budaya": namaBudaya,
        "Ket_Budaya": ketBudaya,
        "Foto_Budaya": fotoBudaya,
        "dibuat":
            "${dibuat!.year.toString().padLeft(4, '0')}-${dibuat!.month.toString().padLeft(2, '0')}-${dibuat!.day.toString().padLeft(2, '0')}",
        "diubah":
            "${diubah!.year.toString().padLeft(4, '0')}-${diubah!.month.toString().padLeft(2, '0')}-${diubah!.day.toString().padLeft(2, '0')}",
        "dihapus": dihapus,
      };
}
