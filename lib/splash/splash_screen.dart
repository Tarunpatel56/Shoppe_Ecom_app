import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/create_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,

        children: [
          SizedBox(height: Get.height * 0.3),
          Center(
            child: Stack(
              children: [
                Center(child: Image.asset("assets/splash/Ellipse.png")),
                Container(
                  child: Positioned(
                    top: 20,
                    right: 165,
                    child: Image.asset(
                      "assets/splash/splah.png",
                      alignment: AlignmentGeometry.centerEnd,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Shoppe",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Beautiful eCommerce UI Kit \n for your online store",
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),

          Column(
            children: [
              SizedBox(height: Get.height * 0.2),
              SizedBox(
                width: Get.width * 0.9,
                height: Get.height * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(CreateScreenpage());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF004CFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                  ),
                  child: Text(
                    "Let's get started",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: .center,
                mainAxisAlignment: .center,
                children: [
                  Text("I already have an account"),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF004CFF),
                      shape: CircleBorder(),
                    ),
                    label: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
