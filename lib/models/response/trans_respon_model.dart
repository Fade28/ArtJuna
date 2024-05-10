import 'dart:convert';

class TransResponModel {
  final String? status;
  final List<Transaksi>? transaksi;

  TransResponModel({
    this.status,
    this.transaksi,
  });

  factory TransResponModel.fromJson(String str) =>
      TransResponModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TransResponModel.fromMap(Map<String, dynamic> json) =>
      TransResponModel(
        status: json["status"],
        transaksi: json["transaksi"] == null
            ? []
            : List<Transaksi>.from(
                json["transaksi"]!.map((x) => Transaksi.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "transaksi": transaksi == null
            ? []
            : List<dynamic>.from(transaksi!.map((x) => x.toMap())),
      };
}

class Transaksi {
  final String? idTransaksi;
  final String? idSanggar;
  final String? idUser;
  final String? idProduk;
  final String? ket;
  final String? hargaJadi;
  final DateTime? tglMulai;
  final DateTime? tglAkhir;
  final DateTime? dibuat;
  final DateTime? diubah;
  final dynamic dihapus;
  final String? namaProduk;
  final String? descProduk;
  final String? harga;
  final String? jenis;
  final String? fotoProduk;

  Transaksi({
    this.idTransaksi,
    this.idSanggar,
    this.idUser,
    this.idProduk,
    this.ket,
    this.hargaJadi,
    this.tglMulai,
    this.tglAkhir,
    this.dibuat,
    this.diubah,
    this.dihapus,
    this.namaProduk,
    this.descProduk,
    this.harga,
    this.jenis,
    this.fotoProduk,
  });

  factory Transaksi.fromJson(String str) => Transaksi.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Transaksi.fromMap(Map<String, dynamic> json) => Transaksi(
        idTransaksi: json["Id_Transaksi"],
        idSanggar: json["Id_Sanggar"],
        idUser: json["Id_User"],
        idProduk: json["Id_Produk"],
        ket: json["Ket"],
        hargaJadi: json["Harga_Jadi"],
        tglMulai: json["Tgl_Mulai"] == null
            ? null
            : DateTime.parse(json["Tgl_Mulai"]),
        tglAkhir: json["Tgl_Akhir"] == null
            ? null
            : DateTime.parse(json["Tgl_Akhir"]),
        dibuat: json["dibuat"] == null ? null : DateTime.parse(json["dibuat"]),
        diubah: json["diubah"] == null ? null : DateTime.parse(json["diubah"]),
        dihapus: json["dihapus"],
        namaProduk: json["Nama_Produk"],
        descProduk: json["Desc_Produk"],
        harga: json["Harga"],
        jenis: json["Jenis"],
        fotoProduk: json["Foto_Produk"],
      );

  Map<String, dynamic> toMap() => {
        "Id_Transaksi": idTransaksi,
        "Id_Sanggar": idSanggar,
        "Id_User": idUser,
        "Id_Produk": idProduk,
        "Ket": ket,
        "Harga_Jadi": hargaJadi,
        "Tgl_Mulai":
            "${tglMulai!.year.toString().padLeft(4, '0')}-${tglMulai!.month.toString().padLeft(2, '0')}-${tglMulai!.day.toString().padLeft(2, '0')}",
        "Tgl_Akhir":
            "${tglAkhir!.year.toString().padLeft(4, '0')}-${tglAkhir!.month.toString().padLeft(2, '0')}-${tglAkhir!.day.toString().padLeft(2, '0')}",
        "dibuat":
            "${dibuat!.year.toString().padLeft(4, '0')}-${dibuat!.month.toString().padLeft(2, '0')}-${dibuat!.day.toString().padLeft(2, '0')}",
        "diubah":
            "${diubah!.year.toString().padLeft(4, '0')}-${diubah!.month.toString().padLeft(2, '0')}-${diubah!.day.toString().padLeft(2, '0')}",
        "dihapus": dihapus,
        "Nama_Produk": namaProduk,
        "Desc_Produk": descProduk,
        "Harga": harga,
        "Jenis": jenis,
        "Foto_Produk": fotoProduk,
      };
}
