import 'dart:convert';

class ProdukResponModel {
  final String? status;
  final List<Produk>? produk;

  ProdukResponModel({
    this.status,
    this.produk,
  });

  factory ProdukResponModel.fromJson(String str) =>
      ProdukResponModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProdukResponModel.fromMap(Map<String, dynamic> json) =>
      ProdukResponModel(
        status: json["status"],
        produk: json["produk"] == null
            ? []
            : List<Produk>.from(json["produk"]!.map((x) => Produk.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "produk": produk == null
            ? []
            : List<dynamic>.from(produk!.map((x) => x.toMap())),
      };
}

class Produk {
  final String? idProduk;
  final String? namaProduk;
  final String? descProduk;
  final String? harga;
  final String? jenis;
  final String? fotoProduk;
  final String? idSanggar;
  final DateTime? dibuat;
  final DateTime? diubah;
  final dynamic dihapus;
  final String? namaSanggar;
  final String? alamatSanggar;
  final String? nohpSanggar;
  final String? fotoSanggar;

  Produk({
    this.idProduk,
    this.namaProduk,
    this.descProduk,
    this.harga,
    this.jenis,
    this.fotoProduk,
    this.idSanggar,
    this.dibuat,
    this.diubah,
    this.dihapus,
    this.namaSanggar,
    this.alamatSanggar,
    this.nohpSanggar,
    this.fotoSanggar,
  });

  factory Produk.fromJson(String str) => Produk.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Produk.fromMap(Map<String, dynamic> json) => Produk(
        idProduk: json["Id_Produk"],
        namaProduk: json["Nama_Produk"],
        descProduk: json["Desc_Produk"],
        harga: json["Harga"],
        jenis: json["Jenis"],
        fotoProduk: json["Foto_Produk"],
        idSanggar: json["Id_Sanggar"],
        dibuat: json["dibuat"] == null ? null : DateTime.parse(json["dibuat"]),
        diubah: json["diubah"] == null ? null : DateTime.parse(json["diubah"]),
        dihapus: json["dihapus"],
        namaSanggar: json["Nama_Sanggar"],
        alamatSanggar: json["Alamat_Sanggar"],
        nohpSanggar: json["Nohp_Sanggar"],
        fotoSanggar: json["Foto_Sanggar"],
      );

  Map<String, dynamic> toMap() => {
        "Id_Produk": idProduk,
        "Nama_Produk": namaProduk,
        "Desc_Produk": descProduk,
        "Harga": harga,
        "Jenis": jenis,
        "Foto_Produk": fotoProduk,
        "Id_Sanggar": idSanggar,
        "dibuat":
            "${dibuat!.year.toString().padLeft(4, '0')}-${dibuat!.month.toString().padLeft(2, '0')}-${dibuat!.day.toString().padLeft(2, '0')}",
        "diubah":
            "${diubah!.year.toString().padLeft(4, '0')}-${diubah!.month.toString().padLeft(2, '0')}-${diubah!.day.toString().padLeft(2, '0')}",
        "dihapus": dihapus,
        "Nama_Sanggar": namaSanggar,
        "Alamat_Sanggar": alamatSanggar,
        "Nohp_Sanggar": nohpSanggar,
        "Foto_Sanggar": fotoSanggar,
      };
}
