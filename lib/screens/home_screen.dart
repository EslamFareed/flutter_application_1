import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> names = [
    "Shoes",
    "Shirt",
    "T-Shirt",
    "Football",
    "Laptop",
    "Shoes",
    "Shirt",
    "T-Shirt",
    "Football",
    "Laptop",
    "Shoes",
    "Shirt",
    "T-Shirt",
    "Football",
    "Laptop",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),

      body: Column(
        children: [
          // CarouselSlider.builder(
          //   itemCount: 5,
          //   itemBuilder: (context, index, realIndex) {
          //     return Image.network(
          //       "https://images.pexels.com/photos/220429/pexels-photo-220429.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          //       fit: BoxFit.cover,
          //       height: 300,
          //     );
          //   },
          //   options: CarouselOptions(
          //     // aspectRatio: 16 / 9,
          //     height: 300,
          //     viewportFraction: 1,
          //     autoPlay: true,
          //     autoPlayAnimationDuration: Duration(seconds: 1),
          //     autoPlayInterval: Duration(seconds: 5),
          //     enlargeCenterPage: true,
          //   ),
          // ),

          ElevatedButton(
            onPressed: () async {
              // Toast

              // showModalBottomSheet(
              //   enableDrag: true,
              //   showDragHandle: true,
              //   isDismissible: false,
              //   context: context,
              //   builder: (context) {
              //     return Column(
              //       children: [
              //         Text("This is a bottom sheet"),
              //       ],
              //     );
              //   },
              // );

              // showDialog(
              //   context: context,
              //   builder: (context) {
              //     return Dialog(
              //       child: Container(
              //         height: 200,
              //         width: 200,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(16),
              //         ),
              //         child: Column(
              //           children: [
              //             Text("This is a Dialog"),
              //           ],
              //         ),
              //       ),
              //     );
              //   },
              // );

              // var time = await showTimePicker(
              //   context: context,
              //   initialTime: TimeOfDay.now(),
              // );
              // print(time);
              // var date = await showDatePicker(
              //   context: context,
              //   initialDate: DateTime.now(),
              //   firstDate: DateTime(2020),
              //   lastDate: DateTime(2025),
              //   cancelText: "i will not choose now",
              //   confirmText: "Choose This Date",
              // );
              // print(date);

              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(
              //     content: Text("This is content in snack bar"),
              //     action: SnackBarAction(
              //       label: "Undo Delete",
              //       onPressed: () {},
              //     ),
              //     // backgroundColor: Colors.red,
              //     // duration: Duration(seconds: 2),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(16),
              //     ),
              //     showCloseIcon: true,
              //   ),
              // );
            },
            child: const Text("SHow Date Picker"),
          )
        ],
      ),

      // body:
      //     //GridView.custom
      //     GridView.builder(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     // crossAxisSpacing: 5,
      //     // mainAxisSpacing: 5,
      //     // childAspectRatio: 1 / 2,
      //   ),
      //   itemBuilder: (context, i) {
      //     return Card(
      //       child: Text(names[i]),
      //     );
      //   },
      //   itemCount: names.length,
      // ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         height: 50,
      //         child: ListView.builder(
      //           scrollDirection: Axis.horizontal,
      //           itemBuilder: (context, i) {
      //             return Card(child: Text(names[i]));
      //           },
      //           itemCount: names.length,
      //         ),
      //       ),
      //       ListView.builder(
      //         physics: NeverScrollableScrollPhysics(),
      //         shrinkWrap: true,
      //         itemBuilder: (context, i) {
      //           return Card(
      //             child: ListTile(
      //               title: Text(names[i]),
      //             ),
      //           );
      //         },
      //         itemCount: names.length,
      //       ),
      //       SizedBox(
      //         height: 50,
      //         child: ListView.builder(
      //           scrollDirection: Axis.horizontal,
      //           itemBuilder: (context, i) {
      //             return Card(child: Text(names[i]));
      //           },
      //           itemCount: names.length,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 200,
      //         color: Colors.black,
      //       ),
      //       Container(
      //         height: 600,
      //         color: Colors.deepOrange,
      //       ),
      //       Container(
      //         height: 100,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         height: 300,
      //         color: Colors.black,
      //       ),
      //       Container(
      //         height: 400,
      //         color: Colors.blue,
      //       ),
      //     ],
      //   ),
      // ),

      // body: Column(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(color: Colors.red),
      //     ),
      //     Expanded(
      //       flex: 5,
      //       child: Container(color: Colors.blue),
      //     ),
      //   ],
      // ),
    );
  }
}


// List view = Column / Row

// Widgets