import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';
class HospitalDetails extends StatelessWidget {
  const HospitalDetails({Key? key}) : super(key: key);

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
          //name of specific hospital
          'Kenyatta National Hospital',
          style: const TextStyle(
            color: orangeColor,
            fontWeight: FontWeight.w700,

          ),
        ),
        centerTitle: true,

      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  color: grayColor,
                ),
                child:
                Padding(
                  padding: EdgeInsets.only(top: 20,bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                          'CEO',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: lightgrayColor,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                          'Geoffrey Karanja',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ligttextblackColor,
                        ),

                      ),
                      Divider(
                        height: 0,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'Hospital Contact',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: lightgrayColor,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        '0712345678',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ligttextblackColor,
                        ),

                      ),
                      Divider(height: 0,),
                      SizedBox(height: 20,),
                      Text(
                        'Hospital Email',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: lightgrayColor,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'knhosiptal@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ligttextblackColor,
                        ),

                      ),
                      Divider(height: 0,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Full Bed Capacity',
                    style: TextStyle(
                      color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,

                    ),
                  ),

                  Text(
                    '500',
                    style: TextStyle(
                        color : orangeColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Beds Needed',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                    ),
                  ),

                  Text(
                    '300',
                    style: TextStyle(
                        color : orangeColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Beds Contributed',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                    ),
                  ),

                  Text(
                    '200',
                    style: TextStyle(
                        color : greenColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Beds Defecit',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                    ),
                  ),

                  Text(
                    '100',
                    style: TextStyle(
                        color : pinkColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),


      ),

    );
  }
}
