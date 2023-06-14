import 'package:json_annotation/json_annotation.dart';
// part 'new_model.g.dart';
// @JsonSerializable()
// class NewModel {
// String? official;
// String? png;
// String? region;
// NewModel(this.official,this.png,this.region);
// factory NewModel.fromJson(Map<String,dynamic> json)=>_$NewModelFromJson(json);
// }

import 'package:json_annotation/json_annotation.dart';

part 'get_only_one_model.g.dart';

@JsonSerializable()
class GetOnlyOneModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  GetOnlyOneModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });
  // factory GetOnlyOneModel.fromJson(Map<String, dynamic> json) =>
  //     _$GetOnlyOneModelFromJson(json);
  factory GetOnlyOneModel.fromJson(Map<String, dynamic> json) =>
      GetOnlyOneModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  // Map<String, dynamic> toJson() => {
  //       "userId": userId,
  //       "id": id,
  //       "title": title,
  //       "body": body,
  //     };
}
