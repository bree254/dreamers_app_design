import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MentalHealthInitiatives extends StatelessWidget {

  MentalHealthInitiatives({Key? key}) : super(key: key);

  final List<GridItems> items = [
    GridItems(Image: 'assets/images/y_icon.png', name: 'Why this initiative?',
      // WifiPackages()
    ),
    GridItems(Image: 'assets/images/schedule.png', name: 'Events' ,
      // Installation()
    ),
    GridItems(Image: 'assets/images/sponsors.png', name: 'Sponsors',
      // CustomerSupport()
    ),
    GridItems(Image: 'assets/images/partners.png', name: 'Partners' ,
      // UserProfile()
    ),
    GridItems(Image: 'assets/images/learning.png', name: 'Education',
      // Logout()
    ),
    GridItems(Image: 'assets/images/brief.png', name: 'Summary',
      // WifiPackages()
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title:   Column(
          children: [
            Text('Dreamers',style: TextStyle(
                color: limegreenColor,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
            ),
            Text(' MENTAL HEALTH WELLNESS ',style: TextStyle(
                color: limegreenColor,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),


          ],
        ),
      ),

      body: Container(
        padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0
          ),
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: (){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                //   return items[index].route;
                // }));
              },
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: greenColor,
                    ),
                    padding: const EdgeInsets.all(8),
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child:Image.asset(items[index].Image),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          items[index].name,
                          style: TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15


                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );

          },
        ),
      ),
    );

  }
}
class GridItems{
  String Image;
  String name;
  // final Widget route;
  GridItems({
    // this.route,
    required this.Image,
    required this.name});
}
