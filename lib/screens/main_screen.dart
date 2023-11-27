import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Bar"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: SizedBox(
                  width: 100,
                  child: Text(
                    "Community",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Tab(text: "stories"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            Center(child: Text("Stories")),
            Center(child: Text("Calls")),
          ],
        ),
      ),
    );
  }
}










// class MainScreen extends StatefulWidget {
//   MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int index = 0;

//   List<Widget> screens = [
//     Center(child: Text("Home")),
//     Center(child: Text("Profile")),
//     Center(child: Text("Search")),
//     Center(child: Text("Camera")),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[index],
//       bottomNavigationBar: BottomNavigationBar(
//         showUnselectedLabels: false,
//         selectedItemColor: Colors.deepOrange,
//         unselectedItemColor: Colors.white,
//         onTap: (i) {
//           setState(() {
//             index = i;
//           });
//         },
//         currentIndex: index,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.black,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: "Search",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.camera),
//             label: "Camera",
//           ),
//         ],
//       ),
//     );
//   }
// }
