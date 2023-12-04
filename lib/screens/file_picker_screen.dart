import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePickerScreen extends StatelessWidget {
  const FilePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Picker'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var result =
                await FilePicker.platform.pickFiles(allowMultiple: true);

            print(result!.files.single.path);
          },
          child: const Text("Pick File"),
        ),
      ),
    );
  }
}



// Pick Video 
// Play in screen