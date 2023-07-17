import 'package:chaloexam_task/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';

import 'models/post_model.dart';

abstract class PostsRepo {
  Future<Either<MainFailure, PostsModel>> sendPost({
    required String title,
    required String userId,
    required String body,
  });
}
