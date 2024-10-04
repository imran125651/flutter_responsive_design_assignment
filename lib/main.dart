import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_assignment/screens/home_screen.dart';

late Size size;

void main(){
  runApp(const ResponsiveDesign());
}

class ResponsiveDesign extends StatelessWidget {
  const ResponsiveDesign({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


