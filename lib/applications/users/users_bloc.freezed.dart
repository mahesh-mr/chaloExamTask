// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUsersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsersData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserData value) getUsersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserData value)? getUsersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserData value)? getUsersData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res, UsersEvent>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res, $Val extends UsersEvent>
    implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetUserDataCopyWith<$Res> {
  factory _$$_GetUserDataCopyWith(
          _$_GetUserData value, $Res Function(_$_GetUserData) then) =
      __$$_GetUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetUserDataCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$_GetUserData>
    implements _$$_GetUserDataCopyWith<$Res> {
  __$$_GetUserDataCopyWithImpl(
      _$_GetUserData _value, $Res Function(_$_GetUserData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetUserData implements _GetUserData {
  const _$_GetUserData();

  @override
  String toString() {
    return 'UsersEvent.getUsersData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsersData,
  }) {
    return getUsersData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUsersData,
  }) {
    return getUsersData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsersData,
    required TResult orElse(),
  }) {
    if (getUsersData != null) {
      return getUsersData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserData value) getUsersData,
  }) {
    return getUsersData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserData value)? getUsersData,
  }) {
    return getUsersData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserData value)? getUsersData,
    required TResult orElse(),
  }) {
    if (getUsersData != null) {
      return getUsersData(this);
    }
    return orElse();
  }
}

abstract class _GetUserData implements UsersEvent {
  const factory _GetUserData() = _$_GetUserData;
}

/// @nodoc
mixin _$UsersState {
  bool get isLoding => throw _privateConstructorUsedError;
  List<UserApiModel> get usersData => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<UserApiModel>>>
      get userFaileurOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
  @useResult
  $Res call(
      {bool isLoding,
      List<UserApiModel> usersData,
      Option<Either<MainFailure, List<UserApiModel>>>
          userFaileurOrSuccessOption});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? usersData = null,
    Object? userFaileurOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      usersData: null == usersData
          ? _value.usersData
          : usersData // ignore: cast_nullable_to_non_nullable
              as List<UserApiModel>,
      userFaileurOrSuccessOption: null == userFaileurOrSuccessOption
          ? _value.userFaileurOrSuccessOption
          : userFaileurOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<UserApiModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersStateCopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$$_UsersStateCopyWith(
          _$_UsersState value, $Res Function(_$_UsersState) then) =
      __$$_UsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoding,
      List<UserApiModel> usersData,
      Option<Either<MainFailure, List<UserApiModel>>>
          userFaileurOrSuccessOption});
}

/// @nodoc
class __$$_UsersStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_UsersState>
    implements _$$_UsersStateCopyWith<$Res> {
  __$$_UsersStateCopyWithImpl(
      _$_UsersState _value, $Res Function(_$_UsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? usersData = null,
    Object? userFaileurOrSuccessOption = null,
  }) {
    return _then(_$_UsersState(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      usersData: null == usersData
          ? _value._usersData
          : usersData // ignore: cast_nullable_to_non_nullable
              as List<UserApiModel>,
      userFaileurOrSuccessOption: null == userFaileurOrSuccessOption
          ? _value.userFaileurOrSuccessOption
          : userFaileurOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<UserApiModel>>>,
    ));
  }
}

/// @nodoc

class _$_UsersState implements _UsersState {
  const _$_UsersState(
      {required this.isLoding,
      required final List<UserApiModel> usersData,
      required this.userFaileurOrSuccessOption})
      : _usersData = usersData;

  @override
  final bool isLoding;
  final List<UserApiModel> _usersData;
  @override
  List<UserApiModel> get usersData {
    if (_usersData is EqualUnmodifiableListView) return _usersData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersData);
  }

  @override
  final Option<Either<MainFailure, List<UserApiModel>>>
      userFaileurOrSuccessOption;

  @override
  String toString() {
    return 'UsersState(isLoding: $isLoding, usersData: $usersData, userFaileurOrSuccessOption: $userFaileurOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersState &&
            (identical(other.isLoding, isLoding) ||
                other.isLoding == isLoding) &&
            const DeepCollectionEquality()
                .equals(other._usersData, _usersData) &&
            (identical(other.userFaileurOrSuccessOption,
                    userFaileurOrSuccessOption) ||
                other.userFaileurOrSuccessOption ==
                    userFaileurOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoding,
      const DeepCollectionEquality().hash(_usersData),
      userFaileurOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      __$$_UsersStateCopyWithImpl<_$_UsersState>(this, _$identity);
}

abstract class _UsersState implements UsersState {
  const factory _UsersState(
      {required final bool isLoding,
      required final List<UserApiModel> usersData,
      required final Option<Either<MainFailure, List<UserApiModel>>>
          userFaileurOrSuccessOption}) = _$_UsersState;

  @override
  bool get isLoding;
  @override
  List<UserApiModel> get usersData;
  @override
  Option<Either<MainFailure, List<UserApiModel>>>
      get userFaileurOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
