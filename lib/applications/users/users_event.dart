part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.getUsersData() = _GetUserData;
}