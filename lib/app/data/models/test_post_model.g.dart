// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestPostModel _$TestPostModelFromJson(Map<String, dynamic> json) =>
    TestPostModel(
      userId: json['userId'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$TestPostModelToJson(TestPostModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };
