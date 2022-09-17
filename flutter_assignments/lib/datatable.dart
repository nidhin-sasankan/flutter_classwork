import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Datatables(),
  ));
}

class Datatables extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datatable"),
      ),
      body: DataTable(
        columns: [
          DataColumn(
            label: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            )
          ),
          DataColumn(
              label: Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              )
          ),
          DataColumn(
              label: Text(
                'Role',
                style: TextStyle(fontStyle: FontStyle.italic),
              )
          ),
        ],
        rows: [
          DataRow(cells:[
            DataCell(Text('Sarah')),
            DataCell(Text('26')),
            DataCell(Text('Student'))
          ]),
          DataRow(cells:[
            DataCell(Text('Jasmine')),
            DataCell(Text('49')),
            DataCell(Text('Professor'))
          ]),
          DataRow(cells:[
            DataCell(Text('Steve')),
            DataCell(Text('36')),
            DataCell(Text('Assistant Professor'))
          ]),
          DataRow(cells:[
            DataCell(Text('Amala')),
            DataCell(Text('25')),
            DataCell(Text('Student'))
          ]),
          DataRow(cells:[
            DataCell(Text('George')),
            DataCell(Text('56')),
            DataCell(Text('Head of Department'))
          ])
        ],
      ),
    );
  }
}
