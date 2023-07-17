import 'package:chaloexam_task/domain/core/failures/main_failure.dart';
import 'package:chaloexam_task/domain/users/models/users_model.dart';
import 'package:dartz/dartz.dart';

abstract class UsersRepo {
  Future<Either<MainFailure, List<UserApiModel>>> getUsersData();
}
