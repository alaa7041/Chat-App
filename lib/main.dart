import 'package:flutter/material.dart';
import 'package:project2/views/auth/login/view.dart';
import 'package:project2/views/auth/splash_screen/view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/logic/helper_methods.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(375, 812),
      builder: (context, child) => MaterialApp(
        title: "Chat App",
        navigatorKey: navigatorKey,
        home: SplashScreen(),
        theme: ThemeData(
          primarySwatch: getMaterialColor(),
          scaffoldBackgroundColor: Colors.white,
           appBarTheme: AppBarTheme(
             backgroundColor: Colors.white,
             elevation: 0,
             titleTextStyle: TextStyle(
               color: getMaterialColor(),
               fontWeight: FontWeight.bold,
               fontSize: 20,
             ),
           ),
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              fixedSize: Size.fromHeight(52),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: Color(0xffF7F7FC),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: Color(0xffF7F7FC),
              )
            ),
            filled: true,
            fillColor: Color(0xffF7F7FC),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
               side: BorderSide(
                 color:
                   getMaterialColor(),
               ),
            ),
          ),
        ),
      ),
    );
  }
}

MaterialColor getMaterialColor() {
  Color color = Color(0xff002DE3);

  return MaterialColor(color.value, {
    50: color.withOpacity(0.1),
    100: color.withOpacity(0.2),
    200: color.withOpacity(0.3),
    300: color.withOpacity(0.4),
    400: color.withOpacity(0.5),
    500: color.withOpacity(0.6),
    600: color.withOpacity(0.7),
    700: color.withOpacity(0.8),
    800: color.withOpacity(0.9),
    900: color,
  });
}
