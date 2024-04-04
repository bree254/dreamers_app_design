
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';
class PartnersPage extends StatelessWidget {
  const PartnersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        leading:IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 20,
          ),
        ),
        centerTitle: true,
        title: Text("Partners",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
        ),

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: partners.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            final product = partners[index];
            return PartnerItem(
              title: product.title,
              image: product.image,
              eventDate: product.eventDate,

            );
          },
        ),
      ),
    );
  }
}
class Partners{
  final String title;
  final String image;
  final DateTime eventDate;



  Partners({
    required this.title,
    required this.image,
    required this.eventDate,

  });
}
List<Partners> partners = [
  Partners(
    title: 'Name of the Partner ',
    image: 'assets/images/partnerships.png',
    eventDate: DateTime(2023, 12, 3),

  ),
  Partners(
    title: 'Name of the Partner ',
    image: 'assets/images/partnerships.png',
    eventDate: DateTime(2023, 12, 3),
  ),
  Partners(
    title: 'Name of the Partner',
    image: 'assets/images/partnerships.png',
     eventDate: DateTime(2023, 12, 3),

  ),
];
class PartnerItem extends StatelessWidget {
  final String title;
  final String image;
  final DateTime eventDate;

  PartnerItem({
    required this.title,
    required this.image,
    required this.eventDate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            Text(
              'Date of the partnership : ${ eventDate}',
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Details',
                        style: TextStyle(
                          color: babypinkColor,
                          fontSize: 15
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: babypinkColor,
                        size: 18,
                      ),
                    ],
                  ),
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}
