import 'dart:convert';

class AjukanResponModel {
  final String? status;
  final Messages? messages;

  AjukanResponModel({
    this.status,
    this.messages,
  });

  factory AjukanResponModel.fromJson(String str) =>
      AjukanResponModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AjukanResponModel.fromMap(Map<String, dynamic> json) =>
      AjukanResponModel(
        status: json["status"],
        messages: json["messages"] == null
            ? null
            : Messages.fromMap(json["messages"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "messages": messages?.toMap(),
      };
}

class Messages {
  final String? success;

  Messages({
    this.success,
  });

  factory Messages.fromJson(String str) => Messages.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Messages.fromMap(Map<String, dynamic> json) => Messages(
        success: json["success"],
      );

  Map<String, dynamic> toMap() => {
        "success": success,
      };
}
