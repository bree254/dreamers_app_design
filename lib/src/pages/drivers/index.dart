import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';
import 'driverprofiles/index.dart';

class FaqItem {
  final String question;
  final List<String> items;
  final Color color;
  final String leadingImage; // Add a leading image URL

  FaqItem({
    required this.question,
    required this.items,
    required this.color,
    required this.leadingImage,
  });
}
List<FaqItem> faqList = [
  FaqItem(
    question: "Tertiary",
    items: ["Kenyatta University", "Kabarak University", "Nairobi University", "Egerton University", "Jomo Kenyatta University of Agriculture and Technology"],
    color: greenColor,
    leadingImage: 'assets/images/man.png',
  ),
  FaqItem(
    question: "High School",
    items: ["Alliance High School", "Mang'u High School", "Kabare Girls' High School", "Bishop Gatimu Girls' High School", "Kabarak"],
    color:orangeColor,
    leadingImage: 'assets/images/girl.png',
  ),
  FaqItem(
    question: "Primary School",
    items: ["Nairobi Primary School", "Star of the Sea Primary School", "Tetu Girls' Primary School","Brookfield Primary School","Musa Gitau Primary School"],
    color: pinkColor,
    leadingImage: 'assets/images/boy.png',
  ),
  // Add more FAQ items here...
];



class DriversPage extends StatelessWidget {
  DriversPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        leading:IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title:   Column(
          children: [
            Text('DRIVERS',style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
            ),
            Text('Of this INITIATIVE',style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
            ),


          ],
        ),
      ),
      body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: faqList.map<Widget>((FaqItem item) {
              return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: item.color,
                ),
                width: double.infinity,
                child: ExpansionTile(
                  iconColor: whiteColor,
                  collapsedIconColor :whiteColor,
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        // Leading Image
                        Image.asset(
                          item.leadingImage,
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(width: 40),
                        // Question Title
                        Expanded(
                          child: Text(
                            item.question,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 200,
                      child: ListView.separated(
                        itemCount: item.items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title:
                            Text(
                              item.items[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,

                              ),
                            ),
                            trailing:
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DriversProfiles()));
                              },
                              child: Icon(
                                Icons.arrow_forward_outlined,
                                color: whiteColor,
                              ),
                            ),
                          );
                        }, separatorBuilder: (BuildContext context, int index) => const Divider(height: 0,color: whiteColor,),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

