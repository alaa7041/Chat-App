import 'package:flutter/material.dart';
import '../../../core/design/app_button.dart';
import '../../../core/logic/helper_methods.dart';
import '../login/view.dart';
import 'package:animate_do/animate_do.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: FadeInDown(
                  duration: Duration(seconds: 5),
                  child: FadeInUp(
                    duration: Duration(seconds: 3),
                    child:const Image(
                      image:NetworkImage("https://cdn-icons-png.flaticon.com/512/4860/4860788.png"),
                      height: 280.33,
                      width: 270,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Text(
                "Connect easily with your family and friends over contries",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100,
              ),
              Text("Terms&Privacy Policy"),
              SizedBox(
                height: 25,
              ),
              AppButton(
                onPress: (){
                  navigateTo(LoginView());
                },
                text: "Start Massaging",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

