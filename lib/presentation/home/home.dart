import 'package:chaloexam_task/applications/home/home_bloc.dart';
import 'package:chaloexam_task/presentation/core/colors.dart';
import 'package:chaloexam_task/presentation/users/users.dart';
import 'package:chaloexam_task/presentation/webview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BottomNavigationBarItem> bottomNavItems = const [
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Users',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.add_link),
    label: 'Web View',
  ),
];

List<Widget> bottomNavScreen = [
  const UsersScreen(),
  const WebViewScreen(),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.initialIndex)),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.initialIndex,
            selectedItemColor: darkColor,
            unselectedItemColor: greyColor,
            onTap: (index) {
              BlocProvider.of<HomeBloc>(context)
                  .add(HomeEvent.started(initialIndex: index));
            },
          ),
        );
      },
    );
  }
}
