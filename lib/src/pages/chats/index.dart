
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/models/chat_user_model.dart';
import 'package:dreamers_app_design/src/widgets/chat_messages_widgets.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
   ChatPage({super.key});
   List<ChatUsers> chatUsers = [
     ChatUsers(name: "Jane Muthoni", messageText: "Lorem ipsum dolor sit amet, consectetur ", imageURL: "images/girl.png", time: "Now"),
     ChatUsers(name: "Peter Njoroge", messageText: "Lorem ipsum dolor sit amet, consectetur ", imageURL: "images/girl.png", time: "Now"),
     ChatUsers(name: "Henry Mutua", messageText: "Lorem ipsum dolor sit amet, consectetur ", imageURL: "images/girl.png", time: "Now"),
     ChatUsers(name: "Philip Maina", messageText: "Lorem ipsum dolor sit amet, consectetur ", imageURL: "images/girl.png", time: "Now"),
     ChatUsers(name: "Debra Ronoh", messageText: "Lorem ipsum dolor sit amet, consectetur ", imageURL: "images/girl.png", time: "Now"),
     ChatUsers(name: "Andrey Otieno", messageText: "Lorem ipsum dolor sit amet, consectetur ", imageURL:"images/girl.png", time: "Now"),
     ChatUsers(name: "Jacob wambua", messageText: "Lorem ipsum dolor sit amet, consectetur ", imageURL: "images/girl.png", time: "Now"),
     ChatUsers(name: "John kiriko", messageText: "Lorem ipsum dolor sit amet, consectetur ", imageURL: "images/girl.png", time: "Now"),

   ];
   final List<MessageCategories> categories = [
     MessageCategories( name: 'All'
     ),
     MessageCategories( name: 'Mental Health Awareness'
     ),
     MessageCategories( name: 'Blood Health Drive'
     ),
     MessageCategories( name: 'Hospital Bed Initiative'
     ),

   ];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.pink,
            size: 20,
          ),
        ),
        centerTitle: true,
           title: Text("Messages",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            ),

        ),

      body:
      SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 16,left: 16,right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.grey.shade100
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  child: SizedBox(
                      height: 100,
                      width: size.width,
                      child:ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          // final category = categories[index];
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: 75,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(143, 148, 251, .2),
                                        blurRadius: 20.0,
                                        offset: Offset(0, 10))
                                  ]
                              ),
                              child:
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      categories[index].name,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      )
                  )
              ),

              ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return MessageWidget(
                    name: chatUsers[index].name,
                    messageText: chatUsers[index].messageText,
                    imageUrl: chatUsers[index].imageURL,
                    time: chatUsers[index].time,
                    isMessageRead: (index == 0 || index == 3)?true:false,
                  );
                },
              ),
            ],
          ),
        ),

    );
  }
}
class MessageCategories{
  String name;


  MessageCategories({

    required this.name,
  });
}