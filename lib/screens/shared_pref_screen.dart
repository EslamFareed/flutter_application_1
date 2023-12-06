import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared_pref/cached_keys.dart';
import 'package:flutter_application_1/shared_pref/shared_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefScreen extends StatelessWidget {
  SharedPrefScreen({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Pref"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(controller: controller),
            ElevatedButton(
              onPressed: () {
                // var prefs = await SharedPreferences.getInstance();

                SharedHelper.prefs
                    .setString(CachedKeys.email.name, controller.text);

                controller.text = "";
              },
              child: const Text("Save"),
            ),
            ElevatedButton(
              onPressed: () async {
                // var prefs = await SharedPreferences.getInstance();

                String? text =
                    SharedHelper.prefs.getString(CachedKeys.email.name);
                controller.text = text ?? "Not Found";
              },
              child: const Text("Get"),
            ),
            ElevatedButton(
              onPressed: () async {
                // var prefs = await SharedPreferences.getInstance();

                // print(prefs.containsKey('text'));

                if (SharedHelper.prefs.containsKey(CachedKeys.email.name)) {
                  await SharedHelper.prefs.remove(CachedKeys.email.name);
                }

                controller.text = "";
              },
              child: const Text("Remove"),
            ),
          ],
        ),
      ),
    );
  }
}
