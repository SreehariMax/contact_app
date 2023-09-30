import 'package:contact_app/src/core/common_widgets/app_button.dart';
import 'package:contact_app/src/core/constants/strings.dart';
import 'package:contact_app/src/core/helpers/validation_helper.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

final GlobalKey<FormState> _formKey = GlobalKey();

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: _formKey,
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    TextFormField(
                      validator: ValidationHelper.validateName,
                      controller: _nameController,
                      decoration: InputDecoration(label: Text(Strings.name),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                     
                      controller: _dobController,
                      decoration: InputDecoration(label: Text(Strings.dob),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                       validator: ValidationHelper.validateNumber,
                      controller: _phoneController,
                      decoration: InputDecoration(
                          prefix: Text("+91"), label: Text(Strings.phone)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: ValidationHelper.validateEmail,
                      controller: _emailController,
                      decoration: InputDecoration(label: Text(Strings.email),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: ValidationHelper.validatePassword,
                      controller: _passwordController,
                      decoration:
                          InputDecoration(label: Text(Strings.password),
                          focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {

                        if( _passwordController.text !=
                            _confirmPasswordController.value){
                              return "Password doesnt match";
                            }
                       
                      },
                      controller: _confirmPasswordController,
                      decoration:
                          InputDecoration(label: Text(Strings.confpass),
                          focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppButtton(
                        buttonTitle: Strings.btn_signup,
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            String email = _emailController.text;
                            String password = _passwordController.text;
                          }
                        })
                  ],
                ),
              ],
            )),
      )),
    );
  }
}
