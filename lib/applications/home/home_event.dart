part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started({
     required int initialIndex,
  }) = _Started;
}