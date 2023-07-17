import 'package:bloc/bloc.dart';
import 'package:chaloexam_task/domain/core/failures/main_failure.dart';
import 'package:chaloexam_task/domain/posts/models/post_model.dart';
import 'package:chaloexam_task/domain/posts/post_reppo.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

@injectable
class PostBloc extends Bloc<PostEvent, PostState> {
  PostsRepo postsRepo;
  PostBloc(this.postsRepo) : super(PostState.inital()) {
    on<_SendPost>((event, emit) async {
      emit(state.copyWith(
        isloding: true,
        postFaileurOrSuccessOption: none(),
      ));
      print(emit);
      final Either<MainFailure, PostsModel> postOptions =
          await postsRepo.sendPost(
        title: event.title,
        userId: event.userId,
        body: event.body,
      );
       print("${postOptions.toString()} ======");
      emit(
        postOptions.fold(
          (failure) => state.copyWith(
            isloding: false,
            postFaileurOrSuccessOption: some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
            isloding: false,
            postsModel: success,
            postFaileurOrSuccessOption: some(
              right(
                success,
              ),
            ),
          ),
        ),
      );
    });
  }
}
