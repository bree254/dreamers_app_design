import 'package:flutter/material.dart';
class InitiativesIndex extends StatelessWidget {
  const InitiativesIndex({Key? key}) : super(key: key);

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
        title: Text("Events",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
        ),

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            return
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),

                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                child:Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(events[index].image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            events[index].title,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Date : ${events[index].eventDate}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            ' Time :${events[index].eventTime}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            ' Location :${events[index].location}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  // Handle like button action
                                },
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  // Handle forward button action
                                },
                                icon: Icon(
                                  Icons.ios_share_outlined,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

            ),
              ) ;
          },
        ),
      ) ,
    );
  }
}
class UpComingEvents{
  final String title;
  final String image;
  final String location;
  final DateTime eventDate;
  final TimeOfDay eventTime;


  UpComingEvents({
    required this.title,
    required this.image,
    required this.location,
    required this.eventDate,
    required this.eventTime,
  });
}
List<UpComingEvents> events = [
  UpComingEvents(
    title: 'International Day of Persons with Disabilities. ',
    image: 'assets/images/event_balls.png',
    location: "coming soon",
    eventDate: DateTime(2023, 12, 3),
    eventTime: TimeOfDay(hour: 14, minute: 30),
  ),
  UpComingEvents(
    title: 'International Day of Persons with Disabilities. ',
    image: 'assets/images/event_balls.png',
    location: "coming soon",
    eventDate: DateTime(2023, 12, 3),
    eventTime: TimeOfDay(hour: 14, minute: 30),
  ),
  UpComingEvents(
    title: 'Launch of Humanitarian Responsibility Initiatives  ',
    image: 'assets/images/event_balls.png',
    location: "coming soon",
    eventDate: DateTime(2023, 12, 3),
    eventTime: TimeOfDay(hour: 14, minute: 30),
  ),
];
