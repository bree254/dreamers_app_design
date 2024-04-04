
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';

class NewSponsorsPage extends StatefulWidget {
  @override
  _NewSponsorsPageState createState() => _NewSponsorsPageState();
}

class _NewSponsorsPageState extends State<NewSponsorsPage> {
  int _selectedTabIndex = 0; // Initially selected tab index

  // Define the content for each tab
  final List<Widget> _tabs = [
    GiftALifePage(),
    ApplyForAChildPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 18,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "New Sponsor Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Custom tab bar
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildTabItem("Gift a Life", 0),
                  buildTabItem("Apply for a Child", 1),
                ],
              ),
            ),

            // Dynamic content based on the selected tab
            _tabs[_selectedTabIndex],
          ],
        ),
      ),
    );
  }

  Widget buildTabItem(String text, int index) {
    final isSelected = _selectedTabIndex == index;

    return InkWell(
      onTap: () {
        setState(() {
          _selectedTabIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isSelected ? greenColor : Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: isSelected ? greenColor : Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class GiftALifePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // Child's name and location
                    Row(
                      children: [
                        Text('Child Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Spacer(), // Adds space between child name and location
                        Text('Location'),
                      ],
                    ),
                    // Child's image
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage('assets/images/partnerships.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Funds Needed'),
                            Text(
                              'KES 20,000',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: pinkColor,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            // Implement Full Details logic
                          },
                          child: Text('Full Details'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: pinkColor,
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Implement Sponsors logic
                          },
                          child: Text('Sponsors'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: pinkColor,
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class Sponsees {
  final String name;
  final String image;
  final String location;

  Sponsees({
    required this.name,
    required this.image,
    required this.location,
  });
}

List<Sponsees> sponseedetails = [
  Sponsees(
    image: 'assets/images/partnerships.png',
    location: "Kawangware",
    name: 'Brenda Wanjiru',
  ),
  Sponsees(
    image: 'assets/images/partnerships.png',
    location: "Kawangware",
    name: 'Brenda Wanjiru',
  ),
  Sponsees(
    image: 'assets/images/partnerships.png',
    location: "Kawangware",
    name: 'Brenda Wanjiru',
  ),
];

class ApplyForAChildPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Apply for a Child',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          // Add the content specific to "Apply for a Child" here
          // This can include text, images, buttons, etc.
        ],
      ),
    );
  }
}
