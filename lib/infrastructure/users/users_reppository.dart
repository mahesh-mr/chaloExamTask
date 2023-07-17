import 'package:chaloexam_task/domain/core/api_endpoints.dart';
import 'package:chaloexam_task/domain/core/failures/main_failure.dart';
import 'package:chaloexam_task/domain/users/models/users_model.dart';
import 'package:chaloexam_task/domain/users/users_reppo.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

@LazySingleton(as: UsersRepo)
class UsersRepository implements UsersRepo {
  @override
  Future<Either<MainFailure, List<UserApiModel>>> getUsersData() async {
    try {
      var response = await Dio(BaseOptions()).get(ApiEndpoint.users);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<UserApiModel> userList = [];
        for (final row in response.data) {
          userList.add(UserApiModel.fromJson(row as Map<String, dynamic>));
        }
       // print(userList);
        return right(userList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
