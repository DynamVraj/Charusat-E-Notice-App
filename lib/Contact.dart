import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}
class _ContactState extends State<Contact>{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('            Contact Us'),
            backgroundColor: Color(0xff01A0C7),
          ),
          body: ListView(children: <Widget>[
            SizedBox(height: 35),
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
                  DataCell(Text('20CS059')),
                  DataCell(Text('Vraj')),
                  DataCell(Text('70433 31110')),
                ]),
                DataRow(cells: [
                  DataCell(Text('20CS072')),
                  DataCell(Text('Nitant')),
                  DataCell(Text('98257 00891')),
                ]),
              ],
            ),
          ])
    );
  }
}