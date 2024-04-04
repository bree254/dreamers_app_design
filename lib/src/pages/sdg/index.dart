
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';
class SDGpage extends StatelessWidget {
   SDGpage({Key? key}) : super(key: key);
   final List<Map<String, dynamic>> _listItem = [
     {"image": 'assets/images/sdg_gl.png'},
     {"image": 'assets/images/poverty.png'},
     {"image": 'assets/images/hunger.png'},
     {"image": 'assets/images/health.png'},
     {"image": 'assets/images/education.png'},
     {"image": 'assets/images/gender.png'},
     {"image": 'assets/images/water.png'},
     {"image": 'assets/images/energy.png'},
     {"image": 'assets/images/economy.png'},
     {"image": 'assets/images/infrastructure.png'},
     {"image": 'assets/images/inequities.png'},
     {"image": 'assets/images/cities.png'},
     {"image": 'assets/images/consumption.png'},
     {"image": 'assets/images/climate.png'},
     {"image": 'assets/images/ocean.png'},
     {"image": 'assets/images/land.png'},
     {"image": 'assets/images/peace.png'},
     {"image": 'assets/images/partnerships.png'},
   ];
   final questions = [
     {
       'question': 'What are the SDG’s?',
       'answer': 'The Sustainable Development Goals (SDGs), are the blueprint to achieve a better and more sustainable future for all. They were adopted by the United Nations (UN) in 2015 as a call to action to end poverty,protect the planet and ensure that by 2030 all people enjoy peace and prosperity. They address the global challenges we face including poverty, inequality, climate change, environmental degradation,peace &amp; justice, etc.',
     },
     {
       'question': 'What is the aim of SDGs?',
       'answer': 'The Sustainable Development Goals (SDGs) aim to transform our world. They are a call to action to endpoverty and inequality, protect the planet and ensure that by 2030 all people enjoy peace, health,justice and prosperity. It is critical that no one if left behind.In 2015, at the UN general assembly in New York, more than 150 world leaders attended the summit torepresent the 193 countries who signed up to achieve these goals.'
     },
     {
       'question': 'Why are the SDGs important?',
       'answer': 'The SDGs provide worldwide guidance for addressing the global challenges facing the international community. It is about better protecting the natural foundations of life and our planet everywhere andfor everyone, and preserving people’s opportunities to live in dignity and prosperity across generations.'
     },
     {
       'question': 'UNDERLYING PRINCIPLES OF SDGs',
       'answer':
       '1) People \n2) Planet\n3) Prosperity\n4) Peace\n5) Partnership\nThe SDGs are based on the above beliefs and principles: - The United Nations member states worktogether with a high level of cooperation to improve the circumstances of all people in the world, andplace them at the core of future development.'
     },
     {
       'question': 'KEY TAKEAWAYS ABOUT THE SDGs.',
       'answer':
       '1) The main ambition of the SDGs are to eradicate global poverty by the end of 2030. Around one billion people live on less than ${1.25} 1.25 dollars a day. While at first this may seem like an unrealistic goal,according to the most recent estimates the percentage of people in developing world who lived on or below ${1.25} a day has gone down by around 26% since 1990 and by around 35% since1980.\n2) The SDGs are replaced the Millennium development Goals (MDGs), eight internationaldevelopment goals that were established following the UN millennium summit in 2000. TheMDGs aimed to reduce poverty and hunger, achieve universal education, promote genderequality, reduce child and maternal deaths, combat HIV, malaria and other diseases, ensureenvironmental sustainability, and develop global partnership.\n3) The vision of the SDGs is to leave no one behind, not only addressing poverty in developing countries but also developed countries. The MDGs were about tackling poverty, hunger andinequality, but did not address the root causes of those issues. The SDGs aim to look at whatdrivers of poverty are and address the blockages to development.\n4) There are 17 goals with 169 targets. There are many hundreds of indicators, which measureprogress towards achieving the goals.\n5) The SDGs were implemented in January 2016 having replaced the MDGs which came to an endat the end of 2015. That means the goals were targeted to be achieved in 15 years that is by2030. With the launching of HRI App in late 2022, it means we only have 8 years to go.'
     },
     {
       'question': 'HOW DOES DREAMERS CLUB SUPPORT THE SDGs?',
       'answer': 'A love for humanity, the wilderness and environment demands participation in the objective to savethem, and to help reverse the steep decline in the overall climate health of our planet. Dreamers Clubaim is to rise up, protect our future by raising children who will embrace the need to create a betterfuture.In the beginning, God created humans; gave them dominion over everything else. That is, we ‘humans’,were given ‘responsibility’ over everything else, including other humans. That is why we refer toDreamers Club initiatives as ‘Humanitarian Responsibility Initiatives’. It is not charity work we are up to,but responsibility. To a greater sense, we humans have lost that sense of responsibility, and things aregetting worse.The United Nations’ outlook of the future we are setting for our children, mirrored a tragic trajectory-giving rise to SDGs, which we fully support. Our support approach is, educating our children about theSDGs, coming up with initiatives aligned to the SDGs and having them participate actively in achievingthese initiatives sustainable goals. These initiatives seeks to create new generation of doers, growing upto be responsible adults.We believe their participation has a profound impact in their subconscious minds to naturally empowerthem to create, and set foundation with appropriate blocks for a better future.'
     },
     // {
     //   'question': 'The 17 SDGs',
     //   'answer': 'Goal 1: No Poverty\nGoal 2: Zero Hunger\nGoal 3: Good Health and Well-being\nGoal 4: Quality Education\nGoal 5: Gender Equality\nGoal 6: Clean Water and Sanitation\nGoal 7: Affordable and Clean Energy\nGoal 8: Decent Work and Economic Growth\nGoal 9: Industry, Innovation, and Infrastructure\nGoal 10: Reduced Inequality\nGoal 11: Sustainable Cities and Communities\nGoal 12: Responsible Consumption and Production\nGoal 13: Climate Action\nGoal 14: Life Below Water\nGoal 15: Life on Land\nGoal 16: Peace, Justice, and Strong Institutions\nGoal 17: Partnerships for the Goals',
     // },



   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            Text('Sustainable',style: TextStyle(
                color: orangeColor,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
            Text(' Development Goals',style: TextStyle(
                color: orangeColor,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),

          ],
        ),
      ),
      body:
      Column(
        children: [
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                // physics: NeverScrollableScrollPhysics(),
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final question = questions[index]['question'];
                  final answer = questions[index]['answer'];
                  return ExpansionTile(
                    title: Text(question!),
                    trailing: Icon(Icons.arrow_drop_down),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(answer!),
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(height: 1),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: Text(
                'The 17 SDGs',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
              child: GridView.count(
                // physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            children: _listItem
                .map((item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(item["image"]),
                                fit: BoxFit.cover)),
                      ),
                    ))
                .toList(),
          ))
        ],
          ),


    );
  }
}
