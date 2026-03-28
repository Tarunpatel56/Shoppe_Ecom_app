import 'package:flutter/material.dart';

class CreateScreenpage extends StatefulWidget {
  const CreateScreenpage({super.key});

  @override
  State<CreateScreenpage> createState() => _CreateScreenpageState();
}

class _CreateScreenpageState extends State<CreateScreenpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Container(child: Image.asset("assets/auth/Bubbles.png"))
          ],
        )
      ],),
    );
  }
}