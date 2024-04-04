
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';

import 'county_hospitals.dart';
import 'hospital_details.dart';

class CountyHospitals extends StatelessWidget {

  CountyHospitals({Key? key}) : super(key: key);
  final List<CountyItems> counties = [
    CountyItems(name: 'Kenyatta National Hospital'),
    CountyItems(name: 'Mbagathi District Hospital'),
    CountyItems(name: 'Gataka Public Hospital '),
    CountyItems(name: 'Kenyatta National Hospital'),
    CountyItems(name: 'Mbagathi District Hospital'),
    CountyItems(name: 'Gataka Public Hospital '),
    CountyItems(name: 'Kenyatta National Hospital'),
    CountyItems(name: 'Mbagathi District Hospital'),
    CountyItems(name: 'Gataka Public Hospital '),
    CountyItems(name: 'Kenyatta National Hospital'),
    CountyItems(name: 'Mbagathi District Hospital'),
    CountyItems(name: 'Gataka Public Hospital '),
    CountyItems(name: 'Kenyatta National Hospital'),
    CountyItems(name: 'Mbagathi District Hospital'),
    CountyItems(name: 'Gataka Public Hospital '),
    CountyItems(name: 'Kenyatta National Hospital'),
    CountyItems(name: 'Mbagathi District Hospital'),
    CountyItems(name: 'Gataka Public Hospital '),
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
          //name of specific county
          'Nairobi',
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
                      'Public Hospitals',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HospitalDetails()));
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  counties[index].name,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: whiteColor,
                                  ),
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

