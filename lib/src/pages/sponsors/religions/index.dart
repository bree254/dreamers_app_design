import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';
class ReligiousSponsors extends StatelessWidget {
  const ReligiousSponsors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'Religious Sponsors',
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
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Churches',
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
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Sponsors(beds: '100',),
                      Sponsors(beds: '90',),
                      Sponsors(beds: '20',),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Sponsors(beds: '100',),
                      Sponsors(beds: '90',),
                      Sponsors(beds: '20',),

                    ],
                  ),
                ],
              ),

            ),


            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Mosques',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Sponsors(beds: '100',),
                  Sponsors(beds: '90',),
                  Sponsors(beds: '20',),


                ],
              ),

            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Temple',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Sponsors(beds: '100',),
                  Sponsors(beds: '90',),
                  Sponsors(beds: '20',),

                ],
              ),
            ),
          ],
        ),


      ),
    );
  }
}
class Sponsors extends StatelessWidget {
  final String beds;


  const Sponsors({Key? key,

    required this.beds
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 80,
        width: 95,
        decoration: BoxDecoration(
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(143, 148, 251, .2),
                  blurRadius: 20.0,
                  offset: Offset(0, 10))
            ]
        ),
        child: Center(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: lightgreyColor,
                ),
              ),

              Text(
                '90 beds',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: orangeColor,
                ),
              ),
            ],
          ),
        ),
      );
  }
}



