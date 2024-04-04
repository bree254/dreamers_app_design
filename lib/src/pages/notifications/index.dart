
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';
class NotificationsPage extends StatelessWidget {
   NotificationsPage({Key? key}) : super(key: key);
   List<NotificationList>notifications = [

     NotificationList( name:'Dreamers Blood Drive', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),
     NotificationList( name: 'Dreamers Mental Health Wellness', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),
     NotificationList( name: 'Dreamers Hospital Bed Initiative', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),
     NotificationList( name: 'Dreamers Blood Drive', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),
     NotificationList( name:'Dreamers Mental Health Wellness', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),
     NotificationList( name: 'Dreamers Blood Drive', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),
     NotificationList( name: 'Dreamers Hospital Bed Initiative', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),
     NotificationList( name: 'Dreamers Blood Drive', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),
     NotificationList( name:'Dreamers Hospital Bed Initiative', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),
     NotificationList( name: 'Dreamers Mental Health Wellness', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),
     NotificationList( name: 'Dreamers Hospital Bed Initiative', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),
     NotificationList( name: 'Dreamers Blood Drive', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', time: 'Now'),

   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: greenColor,
        leading:IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: eggwhiteColor,
          ),
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
              color: eggwhiteColor,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body:ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: (){

            },
            title: Text(notifications[index].name),
            subtitle:  Text(notifications[index].description),
            leading: Image(image: AssetImage('assets/images/logo.png')),
            trailing:Text(notifications[index].time),
          );


        },

        itemCount: notifications.length,),
    );
  }
}

class NotificationList{
  String name;
  String description;
  String time;

  NotificationList({required this.name,
    required this.description ,
     required this.time,
  });
}
