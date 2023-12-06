import 'package:flutter/material.dart';
import 'package:flutter_application_1/root/app_root.dart';
import 'package:flutter_application_1/shared_pref/shared_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedHelper.init();

  runApp(const AppRoot());
}

//! Material App - Scaffold
//! Stateless Widget - Statefull Widget
//! Icon - Text - Container - AppBar
//! Buttons
//! Row - Column
//! Images - Image.assets - Image.network - FadeinImage
//! Fonts
//! TextField - TextFormField - Validation - Form
//! SingleChildScrollView
//! ListView - ListView.builder
//! Nested ListView
//! GridView - GridView.builder
//! Carousel Slider
//! SnackBar
//! DatePicker - TimePicker
//! Toast
//! Dialogs
//! BottomSheet
//! Bottom Navigation Bar
//! Tab Bar

//? Navigation => From Screen to Screen
//? Transition Animation
//? Using Packages
//? Page Transition
//? Themes
//? Device Screen
//? Stack
//? Carousel Slider
//? Awesome Dialog

//! Image Picker
//! File Picker
//! Play Video
//! Play Audio
//! Components
//! MVC


//! Implicit Animation
//! Animation Packages 
//! Shared Preferences
//! Factory Constructor





//! Solid Principles

//! Design Pattern

//! Clean Code

//! Arch Pattern




//! Notes App 

//! Home ( View All Notes + Add New Note )

//! ViewAllNotes 

//! Add New Note ( title + body + DateTime.now() )

//! Shared Pref


//! Map => json => String (Save as String)
//! String => json => Map (Get as List<Map>)