import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/pages/Trainings/index.dart';
import 'package:dreamers_app_design/src/pages/drivers/index.dart';
import 'package:dreamers_app_design/src/pages/initiative/index.dart';
import 'package:dreamers_app_design/src/pages/notifications/index.dart';
import 'package:dreamers_app_design/src/pages/sdg/index.dart';
import 'package:dreamers_app_design/src/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class HomePage extends StatelessWidget {
   HomePage({super.key});
   List<InitiativesList>initiatives = [

     InitiativesList( name:'Dreamers Initiative', imageURL: 'assets/images/diversity.png', route: InitiativePage()),
     InitiativesList( name:'Drivers of this Initiative', imageURL: 'assets/images/initiative_drivers.png', route: DriversPage()),
     InitiativesList( name:'Sustainable Development Goals', imageURL: 'assets/images/sdg.png', route: SDGpage()),
     InitiativesList( name:'Dreamers Club Trainings', imageURL: 'assets/images/trainings.png', route: TrainingsPage()),


   ];
   final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _key,
      drawer: DrawerWidget(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => _key.currentState!.openDrawer(),
          icon: const Icon(
            Icons.menu_rounded
          ),
          color: Colors.black87,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsPage()));
            },
            icon: const Icon(
              CupertinoIcons.bell
            ),
            color: Colors.black87,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Spacer(),
              const Text(
                'Welcome Dreamer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal
                ),
              ),
              const Text(
                'Swipe to see our initiatives',
                style: TextStyle(
                  fontSize: 20,
                  color: primaryColor,
                  fontWeight: FontWeight.bold
                ),
              ),
              const Spacer(),
              SizedBox(
                height: size.height * .55,
                width: size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: initiatives.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child:
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return initiatives[index].route;
                          }));
                        },
                        child: Container(
                          height: size.height * .55,
                          width: size.width * .8,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(15),
                            image:  DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(initiatives[index].imageURL,),
                            )
                          ),
                          child:  Padding(
                            padding: EdgeInsets.only(bottom: 35),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  initiatives[index].name,
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
class InitiativesList{
  String name;
  String imageURL;
  final Widget route;
  InitiativesList({
    required this.name,
    required this.imageURL,
    required this.route,

  });
}