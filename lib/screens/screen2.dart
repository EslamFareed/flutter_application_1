import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),
      appBar: AppBar(
        title: const Text("Screen 2"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Table(
            border: TableBorder(
              bottom: BorderSide(color: Colors.black),
              right: BorderSide(color: Colors.black),
              left: BorderSide(color: Colors.black),
              top: BorderSide(color: Colors.black),
              verticalInside: BorderSide(color: Colors.black),
              horizontalInside: BorderSide(color: Colors.black),
            ),
            children: [
              TableRow(
                // decoration: BoxDecoration(
                //     border: Border.all(
                //   color: Colors.black,
                // )),
                children: [
                  TableCell(
                    child: Text(
                      "id",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TableCell(
                    child: Text(
                      "name",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TableCell(
                    child: Text(
                      "phone",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TableCell(
                    child: Text(
                      "Email",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              for (int i = 0; i <= 5; i++)
                TableRow(
                  children: [
                    TableCell(
                      child: Text("1"),
                    ),
                    TableCell(
                      child: Text("Eslam"),
                    ),
                    TableCell(
                      child: FittedBox(child: Text("+201016361173")),
                    ),
                    TableCell(
                      child: FittedBox(child: Text("eslam@gmail.com")),
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
