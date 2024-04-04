import 'package:dreamers_app_design/src/pages/counties/index.dart';
import 'package:dreamers_app_design/src/pages/initiative_events/index.dart';
import 'package:dreamers_app_design/src/pages/newsponsorspage/index.dart';
import 'package:dreamers_app_design/src/pages/partners/index.dart';
import 'package:dreamers_app_design/src/pages/why_this_inititative/index.dart';
import 'package:flutter/material.dart';

class GridItem {
  final String name;
  final String image;
  final Widget? route;

  GridItem({
    required this.name,
    required this.image,
    this.route,
  });
}


class DreamersSpecificInitiatives extends StatelessWidget {
  final String containerName;
  final List<GridItem> gridItems = [
    GridItem(
      name: 'Why this initiative?',
      image: 'assets/images/y_icon.png',
        route: WhyThisInitiative(),

    ),
    GridItem(
      name: 'Events',
      image: 'assets/images/schedule.png',
        route: InitiativesIndex(),


    ),
    GridItem(
      name: 'Sponsors',
      image: 'assets/images/sponsors.png',
      route:NewSponsorsPage (),
        // SponsorsPage
    ),
    GridItem(
      name: 'Partners',
      image: 'assets/images/partners.png',
      route:
      PartnersPage(),
    ),
    GridItem(
      name: 'Counties',
      image: 'assets/images/counties.png',
      route: CountiesPage(),
    ),
    GridItem(
      name: 'Summary',
      image: 'assets/images/brief.png',
    ),
  ];

  DreamersSpecificInitiatives({required this.containerName});

  @override
  Widget build(BuildContext context) {
    Color appBarTextColor;
    String appBarTitle = containerName; // Use the containerName as the app bar title

    String containerNameLower = containerName.toLowerCase();
    if (containerNameLower == 'dreamers adopt a wheelchair') {
      appBarTextColor = Colors.orange;
    } else if (containerNameLower == 'dreamers blood drive') {
      appBarTextColor = Colors.red;
    } else if (containerNameLower == 'dreamers mental health awareness') {
      appBarTextColor = Colors.green;
    } else {
      appBarTextColor = Colors.black;
    }

    // Define a common color for all grid items
    final gridItemColor = appBarTextColor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),// White background for the app bar
        title: Text(
          appBarTitle,
          style: TextStyle(
            color: appBarTextColor, // Text color for the app bar title
          ),
        ),
      ),
      body:
      Padding(
        padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,// 2 columns in the grid
          children: gridItems.map((gridItem) {
            return buildGridItem(context, gridItem, gridItemColor);
          }).toList(),
        ),
      ),
    );
  }

  Widget buildGridItem(BuildContext context, GridItem gridItem, Color gridItemColor) {
    return InkWell(
      onTap: () {
        if (gridItem.route != null) {
          // Navigate to the specified route when the item is clicked
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => gridItem.route!,
            ),
          );
        }
      },
      child: Card(
        elevation: 4, // Add elevation for a shadow effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            color: gridItemColor, // Use the common color
            child: Center(
              child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(gridItem.image, width: 80, height: 80), // Specify the image path and dimensions
                  SizedBox(height: 10),
                  Text(
                    gridItem.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


