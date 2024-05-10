import 'dart:convert';

class RegisterResponModel {
  final String? status;
  final Massage? massage;

  RegisterResponModel({
    this.status,
    this.massage,
  });

  factory RegisterResponModel.fromJson(String str) =>
      RegisterResponModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RegisterResponModel.fromMap(Map<String, dynamic> json) =>
      RegisterResponModel(
        status: json["status"],
        massage:
            json["massage"] == null ? null : Massage.fromMap(json["massage"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "massage": massage?.toMap(),
      };
}

class Massage {
  Massage();

  factory Massage.fromJson(String str) => Massage.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Massage.fromMap(Map<String, dynamic> json) => Massage();

  Map<String, dynamic> toMap() => {};
}
