import 'package:chaloexam_task/applications/home/home_bloc.dart';
import 'package:chaloexam_task/applications/post/post_bloc.dart';
import 'package:chaloexam_task/applications/users/users_bloc.dart';
import 'package:chaloexam_task/domain/core/di/injectable.dart';
import 'package:chaloexam_task/presentation/core/colors.dart';
import 'package:chaloexam_task/presentation/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<UsersBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<PostBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: bagroundColor),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
