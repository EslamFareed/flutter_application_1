import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screen2.dart';
import 'package:page_transition/page_transition.dart';

class Screen1 extends StatefulWidget {
  Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  Route _buildRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Screen2(),
      transitionDuration: const Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //! Slide Transition
        // final begin = Offset(0, 1); //! From Bottom To Top
        // final begin = Offset(0, -1); //! From Top To Bottom
        // final begin = Offset(1, 0); //! From Right To Left
        // final begin = Offset(-1, 0); //! From Left To Right
        // final begin = Offset(1, 1);
        // final end = Offset.zero;
        // var tween = Tween(begin: begin, end: end);
        // return SlideTransition(
        //   position: animation.drive(tween),
        //   child: child,
        // );

        //! Fade Transition
        // return FadeTransition(
        //   opacity: animation.drive(
        //     Tween(begin: 0.0, end: 1.0),
        //   ),
        //   child: child,
        // );

        //! Rotote Transition
        // return RotationTransition(
        //   turns: animation.drive(Tween(begin: 0.5, end: 1.0)),
        //   child: child,
        // );

        //? Size Transition
        // return SizeTransition(
        //   sizeFactor: animation.drive(Tween(begin: 0.0, end: 1.0)),
        //   child: child,
        //   axis: Axis.horizontal,
        // );

        //! Scale Transition
        // return ScaleTransition(
        //   scale: animation.drive(Tween(begin: 0.0, end: 1.0)),
        //   child: child,
        //   alignment: Alignment.bottomLeft,
        // );

        //! Mix
        return SlideTransition(
          position: animation
              .drive(Tween(begin: const Offset(-1, 0), end: Offset.zero)),
          child: FadeTransition(
            opacity: animation.drive(Tween(begin: 0.0, end: 1.0)),
            child: child,
          ),
        );
      },
    );
  }

  bool isChecked = false;

  int radio = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Screen 1"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    // spreadRadius: ,
                  )
                ],
              ),
            ),
            // CheckboxListTile(
            //   title: Text("Check Box"),
            //   value: isChecked,
            //   onChanged: (val) {
            //     setState(() {
            //       isChecked = val!;
            //     });
            //   },
            // ),
            RadioListTile(
              title: Text("Male"),
              value: 1,
              groupValue: radio,
              onChanged: (value) {
                setState(() {
                  radio = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("Female"),
              value: 2,
              groupValue: radio,
              onChanged: (value) {
                setState(() {
                  radio = value!;
                });
              },
            ),
            Text(
              "Heeloooooooooooo",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    // color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            ElevatedButton(
              onPressed: () {
                //! Using Page Transition Package
                Navigator.push(
                  context,
                  PageTransition(
                    child: Screen2(),
                    type: PageTransitionType.leftToRight,
                    // alignment: Alignment.bottomLeft,
                    // duration: Duration(seconds: 2),
                  ),
                );

                // Navigator.push(context, _buildRoute());

                //! Un Named
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => Screen2(),
                //     ));

                //! Named
                // Navigator.pushNamed(context, "screen2");
                // Navigator.pushReplacementNamed(context, "screen2");
              },
              child: const Text("Go To Screen 2"),
            ),
          ],
        ),
      ),
    );
  }
}
