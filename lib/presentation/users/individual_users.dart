import 'package:chaloexam_task/applications/users/users_bloc.dart';
import 'package:chaloexam_task/presentation/core/colors.dart';
import 'package:chaloexam_task/presentation/core/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IndividualUsers extends StatelessWidget {
  final int index;
  const IndividualUsers({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("User Details"),
      ),
      body: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          return Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      detailsWidgets(
                          width: 110,
                          horizontal: 10,
                          text1: "Name",
                          text2: "Email",
                          text3: "Company",
                          text4: "Phone",
                          text5: "Adress"),
                      detailsWidgets(
                          horizontal: 0,
                          text1: ":",
                          text2: ":",
                          text3: ":",
                          text4: ":",
                          text5: ":",
                          width: 10),
                      detailsWidgets(
                          width: 222,
                          horizontal: 10,
                          text1: state.usersData[index].name!,
                          text2: state.usersData[index].email!,
                          text3: state.usersData[index].company!.name!,
                          text4: state.usersData[index].phone!,
                          text5: state.usersData[index].address!.city!),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Align detailsWidgets({
    required double horizontal,
    required String text1,
    required String text2,
    required String text3,
    required String text4,
    required String text5,
    required double width,
  }) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: width,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            h10,
            Text(
              text2,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            h10,
            Text(
              text3,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            h10,
            Text(
              text4,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            h10,
            Text(
              text5,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
