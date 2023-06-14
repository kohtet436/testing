class TestPostResponseModel {
  int userId;
  String title;
  String body;

  TestPostResponseModel({
    required this.userId,
    required this.title,
    required this.body,
  });

  factory TestPostResponseModel.fromJson(Map<String, dynamic> json) =>
      TestPostResponseModel(
        userId: json["userId"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "title": title,
        "body": body,
      };
}
