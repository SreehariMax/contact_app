import 'package:flutter/material.dart';

class AppButtton extends StatelessWidget {
  const AppButtton({super.key, required this.buttonTitle, required this.onPressed,});
  final String buttonTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          
          padding: EdgeInsets.symmetric(horizontal: 100)
        ),
        onPressed: () {onPressed();}, child: Text(buttonTitle)),
    );
  }
}
