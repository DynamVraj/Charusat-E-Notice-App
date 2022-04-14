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


class NoticeAdmin extends StatefulWidget {
  const NoticeAdmin({Key? key}) : super(key: key);

  @override
  _NoticeAdminState createState() => _NoticeAdminState();
}
class _NoticeAdminState extends State<NoticeAdmin>{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('       Charusat E-Notice'),
        backgroundColor: Color(0xff01A0C7),
      ),

      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xff01A0C7),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 20, ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write notice...",
                          hintStyle: TextStyle(color: Color(0xff01A0C7)),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.send,color: Colors.white,size: 18,),
                    backgroundColor: Color(0xff01A0C7),
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    //   body: Stack(
    //     children: <Widget>[
    //   ListView.builder(
    //   itemCount: messages.length,
    //     shrinkWrap: true,
    //     padding: EdgeInsets.only(top: 10,bottom: 10),
    //     physics: NeverScrollableScrollPhysics(),
    //     itemBuilder: (context, index){
    //       return Container(
    //         padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
    //         child: Text(messages[index].messageContent),
    //       );
    //     },
    //   ),
    //   Align(
    //     child: ListView.builder(
    //       itemCount: messages.length,
    //       shrinkWrap: true,
    //       padding: EdgeInsets.only(top: 10,bottom: 10),
    //       physics: NeverScrollableScrollPhysics(),
    //       itemBuilder: (context, index){
    //         return Container(
    //           padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
    //           child: Align(
    //             alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
    //             child: Container(
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(20),
    //                 color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
    //               ),
    //               padding: EdgeInsets.all(16),
    //               child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
    //             ),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // ],
    // ),
    );
  }
}