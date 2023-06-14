// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_only_one_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOnlyOneModel _$GetOnlyOneModelFromJson(Map<String, dynamic> json) =>
    GetOnlyOneModel(
      userId: json['userId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$GetOnlyOneModelToJson(GetOnlyOneModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
