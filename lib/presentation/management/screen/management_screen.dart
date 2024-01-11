// import 'package:flutter/material.dart';
// import 'package:stock_management/presentation/dashboard/screen/dashboard_screen.dart';

// class ManagementScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.green, 
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           actions: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextButton(
//                 onPressed: () {
//                   print('Skip button pressed');
//                 },
//                 child: const Text(
//                   'Skip',
//                   style: TextStyle(
//                     color: Colors.black, 
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/images/Group 49318.png', 
//                 height: 150,
//                 width: 200, 
//               ),
//               Text(
//                 'Easily Scan\nand Pick',
//                 style: TextStyle(
//                   color: Colors.green[800], 
//                   fontSize: 25.0,
//                   fontWeight: FontWeight.bold, 
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const Text(
//                 'With its innovative features and user-friendly design',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 15.0,
//                 ),
//               ),
//               const Text(
//                 'the Dose Portal is the ideal solution for picking in any',
//                 style: TextStyle(
//                   color: Colors.grey, 
//                   fontSize: 15.0,
//                 ),
//               ),
//               const Text(
//                 'healthcare setting',
//                 style: TextStyle(
//                   color: Colors.grey, 
//                   fontSize: 15.0,
//                 ),
//               ),
//               Image.asset(
//                 'assets/images/Group 49320.png', 
//                 height: 250, 
//                 width: 350, 
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: ClipRRect(
//           borderRadius: BorderRadius.circular(30.0), 
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => DashboardScreen()),
//               );
//             },
//             child: Text(
//               'Next',
//                style: TextStyle(
//                 color: Colors.black, 
//               ),
//             ), 
//             style: ElevatedButton.styleFrom(
//               primary: Colors.green,
//               elevation: 6.0, 
//             ),
//           ),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//       ),
//     );
//   }
// }
