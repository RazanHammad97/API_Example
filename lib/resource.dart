// To parse this JSON data, do
//
//     final resource = resourceFromJson(jsonString);

import 'dart:convert';

Map<String, dynamic> resourceFromJson(String str) => Resource.fromJson(json.decode(str))as Map<String, dynamic>);
;

String resourceToJson(Resource? data) => json.encode(data!.toJson());

class Resource {
  Resource({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory Resource.fromJson(Map<String, dynamic> json) => Resource(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
