// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostEvent {
  String get title => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String userId, String body)
        sendPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String userId, String body)? sendPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String userId, String body)? sendPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPost value) sendPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPost value)? sendPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPost value)? sendPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostEventCopyWith<PostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res, PostEvent>;
  @useResult
  $Res call({String title, String userId, String body});
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res, $Val extends PostEvent>
    implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? userId = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendPostCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory _$$_SendPostCopyWith(
          _$_SendPost value, $Res Function(_$_SendPost) then) =
      __$$_SendPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String userId, String body});
}

/// @nodoc
class __$$_SendPostCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$_SendPost>
    implements _$$_SendPostCopyWith<$Res> {
  __$$_SendPostCopyWithImpl(
      _$_SendPost _value, $Res Function(_$_SendPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? userId = null,
    Object? body = null,
  }) {
    return _then(_$_SendPost(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendPost implements _SendPost {
  const _$_SendPost(
      {required this.title, required this.userId, required this.body});

  @override
  final String title;
  @override
  final String userId;
  @override
  final String body;

  @override
  String toString() {
    return 'PostEvent.sendPost(title: $title, userId: $userId, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendPost &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, userId, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendPostCopyWith<_$_SendPost> get copyWith =>
      __$$_SendPostCopyWithImpl<_$_SendPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String userId, String body)
        sendPost,
  }) {
    return sendPost(title, userId, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String userId, String body)? sendPost,
  }) {
    return sendPost?.call(title, userId, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String userId, String body)? sendPost,
    required TResult orElse(),
  }) {
    if (sendPost != null) {
      return sendPost(title, userId, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPost value) sendPost,
  }) {
    return sendPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPost value)? sendPost,
  }) {
    return sendPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPost value)? sendPost,
    required TResult orElse(),
  }) {
    if (sendPost != null) {
      return sendPost(this);
    }
    return orElse();
  }
}

abstract class _SendPost implements PostEvent {
  const factory _SendPost(
      {required final String title,
      required final String userId,
      required final String body}) = _$_SendPost;

  @override
  String get title;
  @override
  String get userId;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_SendPostCopyWith<_$_SendPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostState {
  bool get isloding => throw _privateConstructorUsedError;
  Option<Either<MainFailure, PostsModel>> get postFaileurOrSuccessOption =>
      throw _privateConstructorUsedError;
  PostsModel? get postsModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
  @useResult
  $Res call(
      {bool isloding,
      Option<Either<MainFailure, PostsModel>> postFaileurOrSuccessOption,
      PostsModel? postsModel});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloding = null,
    Object? postFaileurOrSuccessOption = null,
    Object? postsModel = freezed,
  }) {
    return _then(_value.copyWith(
      isloding: null == isloding
          ? _value.isloding
          : isloding // ignore: cast_nullable_to_non_nullable
              as bool,
      postFaileurOrSuccessOption: null == postFaileurOrSuccessOption
          ? _value.postFaileurOrSuccessOption
          : postFaileurOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, PostsModel>>,
      postsModel: freezed == postsModel
          ? _value.postsModel
          : postsModel // ignore: cast_nullable_to_non_nullable
              as PostsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$$_PostStateCopyWith(
          _$_PostState value, $Res Function(_$_PostState) then) =
      __$$_PostStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloding,
      Option<Either<MainFailure, PostsModel>> postFaileurOrSuccessOption,
      PostsModel? postsModel});
}

/// @nodoc
class __$$_PostStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$_PostState>
    implements _$$_PostStateCopyWith<$Res> {
  __$$_PostStateCopyWithImpl(
      _$_PostState _value, $Res Function(_$_PostState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloding = null,
    Object? postFaileurOrSuccessOption = null,
    Object? postsModel = freezed,
  }) {
    return _then(_$_PostState(
      isloding: null == isloding
          ? _value.isloding
          : isloding // ignore: cast_nullable_to_non_nullable
              as bool,
      postFaileurOrSuccessOption: null == postFaileurOrSuccessOption
          ? _value.postFaileurOrSuccessOption
          : postFaileurOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, PostsModel>>,
      postsModel: freezed == postsModel
          ? _value.postsModel
          : postsModel // ignore: cast_nullable_to_non_nullable
              as PostsModel?,
    ));
  }
}

/// @nodoc

class _$_PostState implements _PostState {
  const _$_PostState(
      {required this.isloding,
      required this.postFaileurOrSuccessOption,
      this.postsModel});

  @override
  final bool isloding;
  @override
  final Option<Either<MainFailure, PostsModel>> postFaileurOrSuccessOption;
  @override
  final PostsModel? postsModel;

  @override
  String toString() {
    return 'PostState(isloding: $isloding, postFaileurOrSuccessOption: $postFaileurOrSuccessOption, postsModel: $postsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostState &&
            (identical(other.isloding, isloding) ||
                other.isloding == isloding) &&
            (identical(other.postFaileurOrSuccessOption,
                    postFaileurOrSuccessOption) ||
                other.postFaileurOrSuccessOption ==
                    postFaileurOrSuccessOption) &&
            (identical(other.postsModel, postsModel) ||
                other.postsModel == postsModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isloding, postFaileurOrSuccessOption, postsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      __$$_PostStateCopyWithImpl<_$_PostState>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState(
      {required final bool isloding,
      required final Option<Either<MainFailure, PostsModel>>
          postFaileurOrSuccessOption,
      final PostsModel? postsModel}) = _$_PostState;

  @override
  bool get isloding;
  @override
  Option<Either<MainFailure, PostsModel>> get postFaileurOrSuccessOption;
  @override
  PostsModel? get postsModel;
  @override
  @JsonKey(ignore: true)
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      throw _privateConstructorUsedError;
}
