import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  TextContent({this.crossAxisAlignment, this.paragraphTextAlign, this.paragraphPadding, super.key});
  CrossAxisAlignment? crossAxisAlignment;
  TextAlign? paragraphTextAlign;
  EdgeInsets? paragraphPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("FLUTTER WEB.",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
            letterSpacing: 4,
            foreground: Paint()
              ..strokeWidth = 3
              ..style = PaintingStyle.stroke
              ..color = Colors.black

          ),
        ),
        Text("THE BASICS",
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900,
              letterSpacing: 4,
              foreground: Paint()
                ..strokeWidth = 3
                ..style = PaintingStyle.stroke
                ..color = Colors.black

          ),
        ),

        Padding(
          padding: paragraphPadding ?? EdgeInsets.all(25.0),
          child: Text(
            "In this course we will go over the basics of using Flutter Web for development. Topics will include Reponsive Layout, Deploying, Font Changes, Hover functionality, Modals and more.",
           style: TextStyle(
             fontSize: 15,
           ),
           textAlign: paragraphTextAlign ?? TextAlign.center,
          ),
        )
      ],
    );
  }
}
