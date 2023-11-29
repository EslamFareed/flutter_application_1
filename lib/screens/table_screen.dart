import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: [
                DataColumn(label: Text("Label")),
                DataColumn(label: Text("Label")),
                DataColumn(label: Text("Label")),
                DataColumn(label: Text("Label")),
                DataColumn(label: Text("Label")),
                DataColumn(label: Text("Label")),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text("Cell")),
                    DataCell(Text("Cell")),
                    DataCell(Text("Cell")),
                    DataCell(Text("Cell")),
                    DataCell(Text("Cell")),
                    DataCell(Text("Cell 6")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("Cell")),
                    DataCell(Text("Cell")),
                    DataCell(Text("Cell")),
                    DataCell(Text("Cell")),
                    DataCell(Text("Cell")),
                    DataCell(Text("Cell 6")),
                  ],
                )
              ],
            ),
          ),

          // child: Table(
          //   border: TableBorder.all(),
          //   children: [
          //     // Header
          //     TableRow(
          //       children: [
          //         TableCell(
          //           child: Text(
          //             "Id",
          //             style:
          //                 TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //           ),
          //         ),
          //         TableCell(
          //           child: Text(
          //             "Name",
          //             style:
          //                 TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //           ),
          //         ),
          //         TableCell(
          //           child: Text(
          //             "Phone",
          //             style:
          //                 TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //           ),
          //         ),
          //       ],
          //     ),

          //     for (int i = 0; i <= 5; i++)
          //       TableRow(children: [
          //         TableCell(child: Text("1")),
          //         TableCell(child: Text("Eslam")),
          //         TableCell(child: Text("+201016361173")),
          //       ])
          //   ],
          // ),
        ),
      ),
    );
  }
}
