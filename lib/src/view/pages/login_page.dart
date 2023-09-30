import 'package:contact_app/src/core/common_widgets/app_button.dart';
import 'package:contact_app/src/core/constants/strings.dart';
import 'package:contact_app/src/core/helpers/validation_helper.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Form(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Column(
                      children: [
                        TextFormField(
                          validator: ValidationHelper.validateEmail,
                          controller: _emailController,
                          decoration:
                              InputDecoration(label: Text(Strings.email)),
                        ),
                        TextFormField(
                          validator: ValidationHelper.validatePassword,
                          controller: _passwordController,
                          obscureText: true,
                          decoration:
                              InputDecoration(label: Text(Strings.password)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AppButtton(
                      buttonTitle: Strings.btn_login, onPressed: () {}),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
