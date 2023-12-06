import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }
}

//! Splash Screen (loading 3 seconds => Login || Home)
//! Login (login any email + password => Home)
//! Home logout => Login

//! Shared Preferences
//! isLogin => true/false
