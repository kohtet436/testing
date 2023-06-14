import 'package:json_annotation/json_annotation.dart';
part 'test_post_model.g.dart';

@JsonSerializable()
class TestPostModel {
  int? id;
  int? userId;
  String? title;
  String? body;

  TestPostModel({
    this.id,
    this.userId,
    this.title,
    this.body,
  });
  // factory TestPostModel.fromJson(Map<String, dynamic> json) =>
  //     _$TestPostModelFromJson(json);
  factory TestPostModel.fromJson(Map<String, dynamic> json) => TestPostModel(
        userId: json["userId"],
        title: json["title"],
        body: json["body"],
        id: json['id'],
      );

  Map<String, dynamic> toJson() =>
      {"userId": userId, "title": title, "body": body, "id": id};
}
