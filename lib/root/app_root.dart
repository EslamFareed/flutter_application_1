import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/audio_screen.dart';
import 'package:flutter_application_1/screens/file_picker_screen.dart';
import 'package:flutter_application_1/screens/image_picker_screen.dart';
import 'package:flutter_application_1/screens/implicit_animation_screen.dart';
import 'package:flutter_application_1/screens/shared_pref_screen.dart';
import 'package:flutter_application_1/screens/video_view_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SharedPrefScreen(),
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.black,

        textTheme: const TextTheme(
          bodySmall: TextStyle(fontSize: 12),
          bodyMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber),
          ),
        ),
      ),
      // initialRoute: "screen1",
      // routes: {
      //   "screen1": (context) => Screen1(),
      //   "screen2": (context) => Screen2(),
      // },
    );
  }
}





//! Link : Open in App 

//! 