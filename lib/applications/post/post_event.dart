part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.sendPost({
    required String title,
    required String userId,
    required String body,
  }) = _SendPost;
}