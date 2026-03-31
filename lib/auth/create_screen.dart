import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shoppe/auth/login_screen.dart';

class CreateScreenpage extends StatefulWidget {
  const CreateScreenpage({super.key});

  @override
  State<CreateScreenpage> createState() => _CreateScreenpageState();
}

class _CreateScreenpageState extends State<CreateScreenpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset("assets/auth/Bubbles.png", fit: BoxFit.fill),
              ),

              Positioned(
                top: Get.height * 0.15,
                left: 20,
                child: Text(
                  "Create \nAccount",
                  style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.15),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "password",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    hintText: 'Your number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ),
              SizedBox(height: Get.height * 0.05),
              SizedBox(
                width: Get.width * 0.9,
                height: Get.height * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF004CFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                  ),
                  child: Text(
                    "Done",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Cencel", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
