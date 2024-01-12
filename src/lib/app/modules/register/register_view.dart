import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inclusi_careers/app/routes/app_pages.dart';

import './register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 60),
            Container(
              alignment: Alignment.center,
              height: 150,
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Register",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: controller.phoneC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Full Name",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controller.phoneC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controller.phoneC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.LOGIN),
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xffED4F2C),
                fixedSize: Size(150, 50),
              ),
            ),
            SizedBox(height: 10),
             Row(
              children: [
                Expanded(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("do something");
                        },
                        text: "Already have an account?",
                        style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                        recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.offAllNamed(Routes.LOGIN);
                        },
                        text: " Back to Login",
                        style: TextStyle(
                        color: Color(0xffED4F2C),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline
                      ),
                      children: [],
                    ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}