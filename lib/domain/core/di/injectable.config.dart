// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../applications/post/post_bloc.dart' as _i7;
import '../../../applications/users/users_bloc.dart' as _i8;
import '../../../infrastructure/posts/posts_repository.dart' as _i4;
import '../../../infrastructure/users/users_reppository.dart' as _i6;
import '../../posts/post_reppo.dart' as _i3;
import '../../users/users_reppo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.PostsRepo>(() => _i4.PostsRepository());
  gh.lazySingleton<_i5.UsersRepo>(() => _i6.UsersRepository());
  gh.factory<_i7.PostBloc>(() => _i7.PostBloc(get<_i3.PostsRepo>()));
  gh.factory<_i8.UsersBloc>(() => _i8.UsersBloc(get<_i5.UsersRepo>()));
  return get;
}
