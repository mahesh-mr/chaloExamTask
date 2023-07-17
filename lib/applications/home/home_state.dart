part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int initialIndex,
  }) = _HomeState;
  factory HomeState.initial() {
    return HomeState(initialIndex: 0);
  }
}
