
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';
class ClubFellows extends StatelessWidget {
  // Sample data list
  final List<Map<String, dynamic>> dataList = [
    {
      'name': 'Nick Mutuma',
      'age': 20,
      'level': 'SF 3',
      'duration': '6 months',
      'starRatings': 4,
    },
    {
      'name': 'John Maina',
      'age': 18,
      'level': 'SF 1',
      'duration': '2 years',
      'starRatings': 2,
    },
    {
      'name': 'Mary Muthoni',
      'age': 25,
      'level': 'SF 2',
      'duration': '1 year',
      'starRatings': 5,
    },
    {
      'name': 'Nick Mutuma',
      'age': 20,
      'level': 'SF 3',
      'duration': '6 months',
      'starRatings': 4,
    },
    {
      'name': 'John Maina',
      'age': 18,
      'level': 'SF 1',
      'duration': '2 years',
      'starRatings': 2,
    },
    {
      'name': 'Mary Muthoni',
      'age': 25,
      'level': 'SF 2',
      'duration': '1 year',
      'starRatings': 5,
    },
    {
      'name': 'Nick Mutuma',
      'age': 20,
      'level': 'SF 3',
      'duration': '6 months',
      'starRatings': 4,
    },
    {
      'name': 'John Maina',
      'age': 18,
      'level': 'SF 1',
      'duration': '2 years',
      'starRatings': 2,
    },
    {
      'name': 'Mary Muthoni',
      'age': 25,
      'level': 'SF 2',
      'duration': '1 year',
      'starRatings': 5,
    },
    {
      'name': 'Nick Mutuma',
      'age': 20,
      'level': 'SF 3',
      'duration': '6 months',
      'starRatings': 4,
    },
    {
      'name': 'John Maina',
      'age': 18,
      'level': 'SF 1',
      'duration': '2 years',
      'starRatings': 2,
    },
    {
      'name': 'Mary Muthoni',
      'age': 25,
      'level': 'SF 2',
      'duration': '1 year',
      'starRatings': 5,
    },

    // Add more data as needed
  ];

  @override
  Widget build(BuildContext context) {
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
          //name will be specific to the drivers chosen
          title:   Column(
            children: [
              Text('DREAMERS CLUB',style: TextStyle(
                  color: greenColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
              ),
              Text('FELLOWS',style: TextStyle(
                  color: greenColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
              ),
            ],
          ),
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Kenyatta University'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        'Patron :',
                      style: TextStyle(
                        color: Colors.black54
                      ),
                    ),
                    Text('Geoffrey Karanja',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('Name')),
                      DataColumn(label: Text('Age')),
                      DataColumn(label: Text('Level')),
                      DataColumn(label: Text('Duration')),
                      DataColumn(label: Text('Star Ratings')),
                    ],
                    rows: dataList.map((data) {
                      return DataRow(
                        color: MaterialStateColor.resolveWith(
                              (states) {
                            // Alternating row colors (Bee Grey and White)
                            return dataList.indexOf(data) % 2 == 0
                                ? Colors.grey[300]!
                                : Colors.white;
                          },
                        ),
                        cells: [
                          DataCell(Text(data['name'].toString())),
                          DataCell(Text(data['age'].toString())),
                          DataCell(Text(data['level'].toString())),
                          DataCell(Text(data['duration'].toString())),
                          DataCell(Row(
                            children: List.generate(
                              data['starRatings'] as int,
                                  (index) => Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                            ) +
                                List.generate(
                                  5 - (data['starRatings'] as int),
                                      (index) => Icon(
                                    Icons.star_border,
                                    color: Colors.yellow,
                                  ),
                                ),
                          )),
                        ],
                      );

                    }).toList(),
                  ),
                ),

              ],
            ),
          )


        ),

    );
  }
}