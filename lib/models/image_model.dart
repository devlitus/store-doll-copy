// To parse this JSON data, do
//
//     final imageModel = imageModelFromJson(jsonString);

import 'dart:convert';

ImageModel imageModelFromJson(String str) =>
    ImageModel.fromJson(json.decode(str));

String imageModelToJson(ImageModel data) => json.encode(data.toJson());

class ImageModel {
  ImageModel({
    required this.name,
    required this.description,
    required this.url,
    this.time = '',
  });

  String name;
  String description;
  String url;
  String time;

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        name: json["name"],
        description: json["description"],
        time: json["time"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "time": time,
        "url": url,
      };
}
