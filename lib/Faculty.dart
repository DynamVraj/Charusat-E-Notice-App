import 'package:flutter/material.dart';

class Faculty extends StatefulWidget {
  const Faculty({Key? key}) : super(key: key);

  @override
  _FacultyState createState() => _FacultyState();
}
class _FacultyState extends State<Faculty>{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('                       Faculty Info'),
            backgroundColor: Color(0xff01A0C7),
          ),
          body: ListView(children: <Widget>[
            Center(
                child: Text(
                  'Faculty-Chart',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            DataTable(
              columns: [
                DataColumn(label: Text(
                    'ID',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Contact no',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
              ],
            ),
          ])
      ),
    );
  }
}