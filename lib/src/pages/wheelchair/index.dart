//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:dreamers/src/constants/theme.dart';
//
//
//
// class WheelChairInitiative extends StatelessWidget {
//
//   WheelChairInitiative({Key? key}) : super(key: key);
//
//   final List<GridItems> items = [
//     GridItems(Image: 'assets/images/y_icon.png', name: 'Why this initiative?', route:  WheelChairSponsors(),
//
//     ),
//     GridItems(Image: 'assets/images/schedule.png', name: 'Events', route:  WheelChairSponsors(),
//
//     ),
//     GridItems(Image: 'assets/images/sponsors.png', name: 'Sponsors',
//        route: WheelChairSponsors()
//     ),
//     GridItems(Image: 'assets/images/partners.png', name: 'Partners', route:   WheelChairSponsors(),
//     ),
//     GridItems(Image: 'assets/images/counties.png', name: 'Counties', route: WheelChairCounties(),
//     ),
//     GridItems(Image: 'assets/images/brief.png', name: 'Summary', route: WheelChairSponsors()
//     )
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading:IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.black,
//           ),
//           onPressed: () => Navigator.pop(context),
//         ),
//         centerTitle: true,
//         title:   Column(
//           children: [
//             Text('DREAMERS',style: TextStyle(
//                 color: orangeColor,
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold
//             ),
//             ),
//             Text('ADOPT A WHEELCHAIR INITIATIVE',style: TextStyle(
//                 color: orangeColor,
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold
//             ),),
//
//
//           ],
//         ),
//       ),
//
//       body: Container(
//         padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
//         child: GridView.builder(
//           itemCount: items.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 10.0,
//               mainAxisSpacing: 10.0
//           ),
//           itemBuilder: (BuildContext context, int index){
//             return GestureDetector(
//               onTap: (){
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//                   return items[index].route;
//                 }));
//               },
//               child: Column(
//                 children: [
//                   Container(
//                     height: 150,
//                     width: 140,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: orangeColor,
//                     ),
//                     padding: const EdgeInsets.all(8),
//                     child:
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Center(
//                           child:Image.asset(items[index].Image),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           items[index].name,
//                           style: TextStyle(
//                             color: whiteColor,
//
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//
//           },
//         ),
//       ),
//
//     );
//
//   }
// }
// class GridItems{
//   String Image;
//   String name;
//   final Widget route;
//   GridItems({
//      required this.route,
//     required this.Image,
//     required this.name});
// }
