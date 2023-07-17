part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
   required bool isLoding,
    required List<UserApiModel> usersData,
    required Option<Either<MainFailure, List<UserApiModel>>>
        userFaileurOrSuccessOption,
  }) = _UsersState;

  factory UsersState.inital(){
   return UsersState(
     isLoding: false,
      userFaileurOrSuccessOption: none(),
      usersData: [],
   );
  }
}
