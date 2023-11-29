import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Stack(
        // Width = Full Width , Height = Full Height
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.red,
              width: 300,
              height: 300,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            right: 50,
            // left: 0,
            // bottom: 0,
            top: 50,
            child: Container(
              color: Colors.black,
              width: 100,
              height: 100,
            ),
          ),

          // Positioned
          // Align
        ],
      ),
    );
  }
}
