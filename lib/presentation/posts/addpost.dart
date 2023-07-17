import 'package:chaloexam_task/applications/post/post_bloc.dart';
import 'package:chaloexam_task/presentation/core/colors.dart';
import 'package:chaloexam_task/presentation/core/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/custom_formfield.dart';

// ignore: must_be_immutable
class AddPost extends StatelessWidget {
  AddPost({super.key});
  GlobalKey<FormState> fomkey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  TextEditingController userIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add Posts"),
      ),
      body: BlocConsumer<PostBloc, PostState>(
        listener: (contexts, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: fomkey,
                  child: Column(
                    children: [
                      h10,
                      CustomFormfeld(
                          controller: titleController,
                          textinputType: TextInputType.text,
                          labelText: "Enter Title",
                          hintText: "abc"),
                      h10,
                      CustomFormfeld(
                          controller: bodyController,
                          textinputType: TextInputType.text,
                          labelText: "Enter Body",
                          hintText: "abc"),
                      h10,
                      CustomFormfeld(
                        controller: userIdController,
                        textinputType: TextInputType.number,
                        labelText: "Enter UserId",
                        hintText: "123",
                      ),
                      h10,
                    ],
                  ),
                ),
                elevetedButton(
                  context,
                  state,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  ElevatedButton elevetedButton(BuildContext context, PostState state) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: cardColor,
          foregroundColor: darkColor,
          elevation: 10,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      onPressed: () {
        bool isValid = fomkey.currentState!.validate();
        if (isValid) {
          BlocProvider.of<PostBloc>(context).add(
            PostEvent.sendPost(
                title: titleController.text,
                userId: userIdController.text,
                body: bodyController.text),
          );
        }
      },
      child: state.isloding
          ? const CircularProgressIndicator()
          : const Text("Submit"),
    );
  }
}
