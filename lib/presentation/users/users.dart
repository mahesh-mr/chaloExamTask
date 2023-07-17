import 'package:chaloexam_task/applications/users/users_bloc.dart';
import 'package:chaloexam_task/presentation/core/colors.dart';
import 'package:chaloexam_task/presentation/posts/addpost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'individual_users.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<UsersBloc>(context).add(const UsersEvent.getUsersData());
    });

    return Scaffold(
      backgroundColor: bagroundColor,
      appBar: AppBar(
        backgroundColor: bagroundColor,
        title: const Text("Posts"),
        centerTitle: true,
      ),
      body: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          return ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: state.usersData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IndividualUsers(index: index),
                      ));
                },
                child: Card(
                  color: cardColor,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    title: Text(state.usersData[index].name!),
                    subtitle: Text(state.usersData[index].company!.name!),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: bagroundColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddPost(),
              ));
        },
        child: const Icon(Icons.post_add),
      ),
    );
  }
}
