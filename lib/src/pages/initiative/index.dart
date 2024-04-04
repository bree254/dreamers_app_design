import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';
import 'dreamers_specific_initiative.dart';


class InitiativePage extends StatelessWidget {
  InitiativePage({Key? key}) : super(key: key);

  final List<InitiativeItems> initiatives = [
    InitiativeItems(
        name: 'Dreamers Adopt a Wheelchair',
        image: 'assets/images/wheelchair.png'),
    InitiativeItems(
        name: 'Dreamers Blood Drive',
        image: 'assets/images/b_drive.png'),
    InitiativeItems(
        name: 'Dreamers Mental Health Awareness',
        image: 'assets/images/m_health.png'),
  ];

  Color specificTextColor(String name) {
    if (name == 'DREAMERS BLOOD DRIVE') {
      return Colors.white;
    } else if (name == 'DREAMERS ADOPT A WHEELCHAIR') {
      return Colors.orange;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              '2023',
              style: TextStyle(color: greenColor, fontWeight: FontWeight.bold),
            ),
            Text(
              'INITIATIVES',
              style:
              TextStyle(color: secondaryColor, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                String initiativeName = initiatives[index].name.toUpperCase(); // Convert to uppercase
                List<String> nameParts = initiativeName.split(' ');
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                    onTap: () {
                      // Navigate to the SecondPage and pass the container's name
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DreamersSpecificInitiatives(
                            containerName: initiatives[index].name,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 300,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(initiatives[index].image),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.4),
                              Colors.black.withOpacity(.2),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'DREAMERS',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              nameParts.sublist(1).join(' '),
                              style: TextStyle(
                                color: specificTextColor(initiativeName),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }
}

class InitiativeItems {
  String image;
  String name;

  InitiativeItems({required this.image, required this.name});
}
