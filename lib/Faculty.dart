import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Faculty extends StatefulWidget {
  const Faculty({Key? key}) : super(key: key);

  @override
  _FacultyState createState() => _FacultyState();
}

class _FacultyState extends State<Faculty> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('           Faculty Info'),
          backgroundColor: Color(0xff01A0C7),
        ),
        body: ListView(children: <Widget>[
          SizedBox(height: 35),
          Center(
              child: Text(
                'Faculty-Chart',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: [
                DataColumn(
                    label: Text('ID',
                         style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Name',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Contact no',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Amit Thakkar')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('Hemang Thakkar')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('Shrushti Gajjar')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('4')),
                  DataCell(Text('Dhruvi Thrivedi')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('Deep Kotharia')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('6')),
                  DataCell(Text('Vaibhai Patel')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('7')),
                  DataCell(Text('Jaina Patel')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('8')),
                  DataCell(Text('Ritesh Patel')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('9')),
                  DataCell(Text('Ayushi Chaudhari')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('10')),
                  DataCell(Text('Mayuri Popat')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('11')),
                  DataCell(Text('Trusha Patel')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('12')),
                  DataCell(Text('Celine Davla')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('13')),
                  DataCell(Text('Jayshree Mehta')),
                  DataCell(Text('')),
                ]),
              ],
            ),
          ),
        ]
      ),
    );
  }
}
// Card(
// child: Padding(
// padding: EdgeInsets.only(
// top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
// child: ExpansionTile(
// title: Text('Birth of Universe'),
// children: <Widget>[
// Text('Big Bang'),
// Text('Birth of the Sun'),
// Text('Earth is Born'),
// ],
// ),
// ),
// )