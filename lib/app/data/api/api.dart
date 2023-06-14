import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:retrofit_testing/app/data/models/get_only_one_model.dart';

import '../models/test_post_model.dart';
part 'api.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET("/posts/1")
  Future<GetOnlyOneModel> getData();
  @GET("/posts")
  Future<List<GetOnlyOneModel>> getListData();
  @POST('/posts')
  Future<TestPostModel> testPost(
      @Field("userId") userId, @Field("title") title, @Field("body") body);
  @PUT('/posts/1')
  Future<TestPostModel> testPut(@Field("id") id, @Field("userId") userId,
      @Field("title") title, @Field("body") body);
  @PATCH('/posts/1')
  Future<TestPostModel> testPatch(
    @Field("title") title,
  );

  @DELETE('/posts/1')
  Future<void> testDelete();
  @GET('/posts?userId={id}')
  Future<List<GetOnlyOneModel>> testQuery(@Path('id') String id);
}
