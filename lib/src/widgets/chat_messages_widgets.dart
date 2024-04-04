
import 'package:dreamers_app_design/src/pages/chats/chat_details.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget{
  String name;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;
  MessageWidget({required this.name,required this.messageText,required this.imageUrl,required this.time,required this.isMessageRead});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return MessageDetailPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(name, style: TextStyle(fontSize: 16),),
                          SizedBox(height: 6,),
                          Text(messageText,style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight: isMessageRead?FontWeight.bold:FontWeight.normal),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(time,style: TextStyle(fontSize: 12,fontWeight: isMessageRead?FontWeight.bold:FontWeight.normal),),
          ],
        ),
      ),
    );
  }
}