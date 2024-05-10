import 'dart:convert';

class LoginResponModel {
  final String? status;
  final User? user;

  LoginResponModel({
    this.status,
    this.user,
  });

  factory LoginResponModel.fromJson(String str) =>
      LoginResponModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponModel.fromMap(Map<String, dynamic> json) =>
      LoginResponModel(
        status: json["status"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "user": user?.toMap(),
      };
}

class User {
  final String? idUser;
  final String? email;
  final String? namaLengkap;
  final String? alamat;
  final String? nohp;
  final String? foto;
  final String? idUserkey;
  final DateTime? dibuat;
  final DateTime? diubah;
  final dynamic dihapus;

  User({
    this.idUser,
    this.email,
    this.namaLengkap,
    this.alamat,
    this.nohp,
    this.foto,
    this.idUserkey,
    this.dibuat,
    this.diubah,
    this.dihapus,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        idUser: json["Id_User"],
        email: json["Email"],
        namaLengkap: json["Nama_Lengkap"],
        alamat: json["Alamat"],
        nohp: json["Nohp"],
        foto: json["Foto"],
        idUserkey: json["Id_Userkey"],
        dibuat: json["dibuat"] == null ? null : DateTime.parse(json["dibuat"]),
        diubah: json["diubah"] == null ? null : DateTime.parse(json["diubah"]),
        dihapus: json["dihapus"],
      );

  Map<String, dynamic> toMap() => {
        "Id_User": idUser,
        "Email": email,
        "Nama_Lengkap": namaLengkap,
        "Alamat": alamat,
        "Nohp": nohp,
        "Foto": foto,
        "Id_Userkey": idUserkey,
        "dibuat":
            "${dibuat!.year.toString().padLeft(4, '0')}-${dibuat!.month.toString().padLeft(2, '0')}-${dibuat!.day.toString().padLeft(2, '0')}",
        "diubah":
            "${diubah!.year.toString().padLeft(4, '0')}-${diubah!.month.toString().padLeft(2, '0')}-${diubah!.day.toString().padLeft(2, '0')}",
        "dihapus": dihapus,
      };
}
