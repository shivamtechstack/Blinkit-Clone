import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
            SizedBox(height: 10,),
            UiHelper.CustomImage(img: "image 10.png"),
            SizedBox(height: 10,),
            UiHelper.CustomText(text: "India's last minute app", color: Colors.black, fontweight: FontWeight.bold, fontSize: 20, fontFamily: "bold"),
            SizedBox(height: 10,),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    UiHelper.CustomText(text: "Shivam", color: Colors.black, fontweight: FontWeight.normal, fontSize: 16),
                    SizedBox(height: 5,),
                    UiHelper.CustomText(text: "999xxxxxxx", color: Colors.black, fontweight: FontWeight.bold, fontSize: 16),
                    SizedBox(height: 10,),

                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ), child: Row(
                        children: [
                          UiHelper.CustomText(text: "Continue with Google", color: Colors.white, fontweight: FontWeight.bold, fontSize: 18),
                          SizedBox(width: 20,),
                          UiHelper.CustomText(text: "G", color: Colors.black, fontweight: FontWeight.bold, fontSize: 18)
                        ],
                      ),
                      ),
                    ),

                    SizedBox(height: 10,),
                    UiHelper.CustomText(text: "Access your saved addresses automatically", color: Colors.black, fontweight: FontWeight.normal, fontSize: 11),
                    SizedBox(height: 20,),
                    UiHelper.CustomText(text: "or login with phone number", color: Colors.red, fontweight: FontWeight.normal, fontSize: 11),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}