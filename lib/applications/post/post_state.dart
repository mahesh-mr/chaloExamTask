part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState({
    required bool isloding,
    
    required Option<Either<MainFailure, PostsModel>>
        postFaileurOrSuccessOption,
        PostsModel? postsModel,
  }) = _PostState;
  factory PostState.inital() {
    return PostState(
      isloding: false,
      postFaileurOrSuccessOption: none(),
    );
  }
}
