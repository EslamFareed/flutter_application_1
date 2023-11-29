import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screen1.dart';
import 'package:flutter_application_1/screens/stack_screen.dart';
import 'package:flutter_application_1/screens/web_view_screen.dart';

import '../screens/pdf_view_screen.dart';
import '../screens/table_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackScreen(),
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.black,

        textTheme: TextTheme(
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
        elevatedButtonTheme: ElevatedButtonThemeData(
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