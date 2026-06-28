import 'package:customize_console/core/global_widget/custom_textfiled.dart';
import 'package:customize_console/pretty_logger.dart';
import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String email;
  final bool isActive;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.isActive,
  });

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "email": email, "isActive": isActive};
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void printJson() {
    UserModel user = UserModel(
      id: 1,
      name: "Parvej Mahmud",
      email: "parvej@gmail.com",
      isActive: true,
    );

    PrettyLogger.printJson(user.toJson());
  }

  @override
  Widget build(BuildContext context) {
    printJson();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            CustomTextfield(
              hintext: 'Enter your email',
              prefixIconPath: 'assets/icons/email.svg',
            ),
            Center(child: Text("Check Console for JSON Output")),
          ],
        ),
      ),
    );
  }
}
