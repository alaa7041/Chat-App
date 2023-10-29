import 'package:flutter/material.dart';
import '../../../core/design/app_button.dart';
import '../../../core/design/app_input.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.only(
            top: 120,
            start: 10,
            end: 10,
          ),
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              Text(
                "Enter Your Phone Number",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Please confirm your country code and enter\n your phone number",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.5,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              AppInput(
                hintText: "Phone Number",
                isPhone: true,
                icon: "assets/icon/3247297.png",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "enter your phone";
                  } else if (value.length < 9) {
                    return "your phone must be 9 character or more";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 58,
              ),
              AppButton(
                text: "Continue",
                onPress: () {},
              ),
              SizedBox(
                height: 115,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Don't have an acount?",style: TextStyle(color:Color
                    (0xffA4A4A4),
                  ),),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
