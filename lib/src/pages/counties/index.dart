import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';

import 'county_hospitals.dart';

class CountiesPage extends StatelessWidget {

  CountiesPage({Key? key}) : super(key: key);

   final List<GridItems> items = [
     GridItems(wheelchairs: '940 wheelchairs ', name: 'Target'
     ),
     GridItems(wheelchairs: '40 wheelchairs', name: 'Contributed'
     ),
     GridItems(wheelchairs: '900 wheelchairs', name: 'Deficit'
     ),

   ];
   final List<CountyItems> counties = [
     CountyItems(name: 'MERU'),
     CountyItems(name: 'NAKURU'),
     CountyItems(name: 'KISII'),
     CountyItems(name: 'MOYALE'),
     CountyItems(name: 'UASIN-GISHU'),
     CountyItems(name: 'NAIROBI'),
     CountyItems(name: 'MOMBASA'),
     CountyItems(name: 'KILIFI'),
     CountyItems(name: 'MERU'),
     CountyItems(name: 'NAKURU'),
     CountyItems(name: 'KISII'),
     CountyItems(name: 'MOYALE'),
     CountyItems(name: 'UASIN-GISHU'),
     CountyItems(name: 'NAIROBI'),
     CountyItems(name: 'MOMBASA'),
     CountyItems(name: 'KILIFI'),
     CountyItems(name: 'MOMBASA'),
     CountyItems(name: 'KILIFI'),
   ];

   @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.white24,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
            size: 25,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        // centerTitle: true,
        title: Text(
          'Counties',
          style: const TextStyle(
            color: orangeColor,
            fontWeight: FontWeight.w700,

          ),
        ),
        centerTitle: true,

      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Adopt A Wheelchair',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                child: SizedBox(
                    height: size.height * 0.17,
                    width: size.width,
                    child:ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: size.height * 0.15,
                            width: size.width * 0.3,
                            decoration: BoxDecoration(
                                color: whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  items[index].name,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),

                               Text(
                                 items[index].wheelchairs,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: orangeColor
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                    )
                ),
              ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '20 chairs per county',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5),
                    itemCount: counties.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0
                    ),
                    itemBuilder: (BuildContext context, int index){
                      return
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CountyHospitals()));
                          },
                          child: Container(
                            height: size.height * 0.05,
                            width: size.width * 0.3,
                            decoration: BoxDecoration(
                                color:  tealColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  counties[index].name,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );

                    },
                  ),
              ),
            )

          ],
        ),


      ),
    );
  }
}


class GridItems{
  String wheelchairs;
  String name;

  GridItems({
    required this.wheelchairs,
    required this.name});
}
class CountyItems{
  String name;

  CountyItems({
    required this.name});
}

