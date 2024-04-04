import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';
class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title:   Column(
          children: [
            Text('Dreamers',style: TextStyle(
                color: babypinkColor,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
            Text(' Club Trainings',style: TextStyle(
                color: greenColor,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Image(image:AssetImage('assets/images/event_balls.png') ),
              Positioned(
                top: 60,
                  left: 50,
                  child:  Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.elliptical(10, 30,),bottomRight: Radius.elliptical(10, 30,),

                  ),
                  color: Colors.black87,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("COMING SOON",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: whiteColor
                    ),),
                  ],
                ),
              ))



          ],
        ),
      ),
      
      // ),
    );
  }
}
