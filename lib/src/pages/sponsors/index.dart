
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/pages/sponsors/religions/index.dart';
import 'package:flutter/material.dart';
class SponsorsPage extends StatelessWidget {
  const SponsorsPage({Key? key}) : super(key: key);

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
          'Sponsors',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Corporates',
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                        children: [
                          Image(
                              width: 80,
                              height: 58,
                              image: AssetImage( 'assets/images/safaricom.png'
                              )),
                          // Image.asset('assets/images/safaricom.png'),
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
                  ),
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
                          children: [
                            Image.asset('assets/images/coop.png'),
                            Text(
                              '20 beds',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: orangeColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 95,
                      padding: const EdgeInsets.all(8),
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
                          children: [
                            Image(
                              height: 45,
                                width: 40,
                                image: AssetImage( 'assets/images/airtel.png'
                                )),


                            Text(
                              '100 beds',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: orangeColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_forward_ios_outlined,
                          color: hotpinkColor,
                          size: 18,
                        ),
                    )

                ],
              ),
              ),

            ),


            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'SME’s',
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Sponsors(beds: '100',),
                  Sponsors(beds: '90',),
                  Sponsors(beds: '20',),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios_outlined,
                      color: hotpinkColor,
                      size: 18,
                    ),
                  )

                ],
              ),
              ),

            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Religion',
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Sponsors(beds: '100',),
                  Sponsors(beds: '90',),
                  Sponsors(beds: '20',),
                  IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ReligiousSponsors()));
                    },
                    icon: Icon(Icons.arrow_forward_ios_outlined,
                      color: hotpinkColor,
                      size: 18,
                    ),
                  )

                ],
              ),

            ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'individuals',
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Sponsors(beds: '100',),
                  Sponsors(beds: '90',),
                  Sponsors(beds: '20',),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios_outlined,
                      color: hotpinkColor,
                      size: 18,
                    ),
                  )

                ],
              ),

            ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Others',
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Sponsors(beds: '100'),
                    Sponsors(beds: '90'),
                    Sponsors(beds: '20'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: hotpinkColor,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            )

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


