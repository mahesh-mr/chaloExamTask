import 'package:chaloexam_task/domain/core/api_endpoints.dart';
import 'package:chaloexam_task/domain/core/failures/main_failure.dart';
import 'package:chaloexam_task/domain/posts/models/post_model.dart';
import 'package:chaloexam_task/domain/posts/post_reppo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PostsRepo)
class PostsRepository implements PostsRepo {
  @override
  Future<Either<MainFailure, PostsModel>> sendPost(
      {required String title,
      required String userId,
      required String body}) async {
    try {
      var response = await Dio(BaseOptions()).post(ApiEndpoint.post, data: {
        "title": title,
        "userId": userId,
        "body": body,
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        final post = PostsModel.fromJson(response.data);
        // print ("${response.data} === ");
        // print(post);
        return right(post);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }
}
