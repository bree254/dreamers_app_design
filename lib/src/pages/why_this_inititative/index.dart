import 'package:flutter/material.dart';
class WhyThisInitiative extends StatelessWidget {
  const WhyThisInitiative({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 20,
          ),
        ),
        centerTitle: true,
        title: Text("Why This Initiative",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
        ),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Why This Initiative?',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
             ),
            SizedBox(height: 16.0),
            for (String paragraph in WhyInititiatives)
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  paragraph,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
const WhyInititiatives = [
'In a UNICEF report from 2013, it was highlighted that a child with disability was twice as likely to have never had the opportunity to attend school compared to their peers without disabilities. This is a sobering reality that we want to address through this initiative.\n Our mission is simple yet impactful: we are dedicated to ensuring that Kenyan children with disabilities in high school and below, who aspire to attend school but are held back due to their parents or guardians being unable to afford a wheelchair, have the chance they truly deserve. Making this dream a reality is a key goal for us in 2024.\n We extend our warm invitation to you, your family, school, chama, church, coworkers, small businesses, corporations, … to join us in brining hope to these remarkable young individuals starting this Holiday seasons 2023 (Christmas Holidays). You have the power to make a genuine impact by sponsoring a child or children of your choice from any county in Kenya. Your support will unlock the doors to education that these children yearn for and rightfully deserve. Together, we can make a profound difference in their lives.\n NB: We’re excited to share some wonderful news with you. In the spirit of nurturing young talent and promoting entrepreneurship and financial well-being, we’ve teamed up with an amazing recent graduate who happens to have a disability. His incredible passion and experience have led him to design and create prototypes of wheelchairs in collaboration with his partners. They are responsible of crafting custom-made wheelchairs for every child sponsored through this platform.\n This initiative is closely aligned with several Sustainable Development Goals (SDGs), which are as follows:\n SDG 3: Good Health & Well-Being\n SDG 4: Quality Education \n SDG 10: Reduce Inequality \n SDG 17: Industry, Innovation & Infrastructure \nSDG 17: Partnerships for The Goals'
];