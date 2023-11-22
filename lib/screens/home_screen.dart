import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.redAccent,
        title: Text("My App"),
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.search),
          Icon(Icons.notifications),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email cannot be empty";
                  } else if (value.length < 10) {
                    return "Email Length must be more than 10 chars";
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              TextFormField(
                validator: (value) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                  // prefixIcon: Icon(Icons.security),
                  suffixIcon: Image.asset(
                    "assets/images/image.jpg",
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    print("Success");
                  }
                },
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}



// SVG