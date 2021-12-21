import 'package:flutter/material.dart';
import 'package:syag/ui/screens/intro_screen/widgets/intro_body.dart';

// Intro Screen
class IntroScreen extends StatelessWidget {
  const IntroScreen();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyOfIntroScreen(),
    );
  }
}
