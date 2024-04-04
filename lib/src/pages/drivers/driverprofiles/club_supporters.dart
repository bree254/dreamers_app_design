
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';
class ClubSupporters extends StatelessWidget {
   ClubSupporters({Key? key}) : super(key: key);
  final List<String> names = [
    'George',
    'Geoffrey',
    'Linus',
    'Margaret',
    'John',
    'Sam',
    'Winnie',
    'Jared',
    'Marion',
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
        //name will be specific to the drivers chosen
        title:   Column(
          children: [
            Text('DREAMERS CLUB',style: TextStyle(
                color: greenColor,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
            Text('SUPPORTER',style: TextStyle(
                color: greenColor,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8) ,
        child:Center(
          child:  DataTable(
            columns: [
              DataColumn(
                label: Center(
                  child: Text('Names'),
                ),
              ),
            ],
            rows: List.generate(names.length, (index) {
              final name = names[index];

              // Determine the row color based on even or odd index
              final isEven = index.isEven;
              final color = isEven ? Colors.grey[300]! : Colors.white!;

              return DataRow(
                color: MaterialStateColor.resolveWith(
                      (states) => color,
                ),
                cells: [
                  DataCell(
                    Center(
                      child: Text(name),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),

    );
  }
}


