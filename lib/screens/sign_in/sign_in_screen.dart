import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import '../../components/no_account_text.dart';
import 'components/sign_form.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/favicon.png", height: 40),
                  const SizedBox(width: 15),
                  const Text(
                    "ArtJuna",
                    style: headingStyle,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                "masuk dengan email dan password anda",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const SignForm(),
              const SizedBox(height: 20),
              const NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
