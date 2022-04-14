import 'package:charusat/AddNotice(admin).dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello, Students", messageType: "receiver"),
  ChatMessage(messageContent: "Welcome to our Charusat-CSE-E-Notice Application", messageType: "receiver"),
  ChatMessage(messageContent: "This is just a sample notices", messageType: "receiver"),
];

class Notice2 extends StatefulWidget {
  const Notice2({Key? key}) : super(key: key);

  @override
  _Notice2State createState() => _Notice2State();
}
class _Notice2State extends State<Notice2>{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('  Charusat E-Notice App'),
        backgroundColor: Color(0xff01A0C7),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NoticeAdmin()));
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff01A0C7),
      ),
    );
  }
}