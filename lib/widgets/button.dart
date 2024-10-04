import 'package:flutter/material.dart';

class JoinCourseButton extends StatelessWidget {
  JoinCourseButton({this.buttonWidth, super.key});
  double? buttonWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(25),
          width: buttonWidth,
          child: TextButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Color(0xFF1FE492)),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
              padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 35))
            ),
            onPressed: (){

            },
            child: const Text("Join course", style: TextStyle(color: Colors.white),)
          ),
        ),
      ],
    );
  }
}
