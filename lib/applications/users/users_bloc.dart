import 'package:bloc/bloc.dart';
import 'package:chaloexam_task/domain/core/failures/main_failure.dart';
import 'package:chaloexam_task/domain/users/models/users_model.dart';
import 'package:chaloexam_task/domain/users/users_reppo.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

@injectable
class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersRepo usersRepo;

  UsersBloc(this.usersRepo) : super(UsersState.inital()) {
    on<_GetUserData>((event, emit) async {
      emit(
        state.copyWith(
          isLoding: true,
          userFaileurOrSuccessOption: none(),
        ),
      );
      final Either<MainFailure, List<UserApiModel>> usersOptions =
          await usersRepo.getUsersData();
      print("${usersOptions.toString()} ======");
      emit(
        usersOptions.fold(
          (failure) => state.copyWith(
            isLoding: false,
            userFaileurOrSuccessOption: some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoding: false,
            usersData: success,
            userFaileurOrSuccessOption: some(
              right(success),
            ),
          ),
        ),
      );
    });
  }
}
