import 'dart:math';

import 'package:flutter/material.dart';

class ImplicitAnimationScreen extends StatefulWidget {
  const ImplicitAnimationScreen({super.key});

  @override
  State<ImplicitAnimationScreen> createState() =>
      _ImplicitAnimationScreenState();
}

class _ImplicitAnimationScreenState extends State<ImplicitAnimationScreen> {
  var color = Colors.red;

  double width = 100;
  double height = 100;

  var showState = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedContainer(
            //   duration: const Duration(seconds: 5),
            //   width: width,
            //   height: height,
            //   decoration: BoxDecoration(
            //     color: color,
            //   ),
            // ),
            AnimatedCrossFade(
              firstChild: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 50,
                  child: Text("First Widget")),
              secondChild: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 50,
                  child: Text("Second Widget")),
              crossFadeState: showState,
              duration: const Duration(milliseconds: 400),
            ),
            ElevatedButton(
              onPressed: () {
                // if (color == Colors.blue) {
                //   color = Colors.red;
                // } else {
                //   color = Colors.blue;
                // }
                // width = Random().nextDouble() * 200.0;
                // height = Random().nextDouble() * 200.0;
                if (showState == CrossFadeState.showFirst) {
                  showState = CrossFadeState.showSecond;
                } else {
                  showState = CrossFadeState.showFirst;
                }
                setState(() {});
              },
              child: const Text("Start"),
            )
          ],
        ),
      ),
    );
  }
}
