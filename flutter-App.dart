// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main(){
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         fontFamily: 'Raleway',
//         ),
//         home: const Home(),
//     ),
//   );
// }

// class Home extends StatelessWidget {
//   const Home ({super.key});

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       bottomNavigationBar:  
//               Row(
//               children: [
//                InkWell(
//                     onTap: (){},
//                     borderRadius:
//                       const BorderRadius.vertical(top: Radius.circular(18)),
//                     child: SizedBox(
//                       width: MediaQuery.of(context).size.width / 4,
//                       height: 75,
//                       child: Padding(
//                         padding: const EdgeInsets.all(1),
//                         child: Image.asset('assets/images/card.jpg'),
//                       ),
//                     ),
//                   ),
//                Material(
//                   color: Colors.grey,
//                   borderRadius:
//                       const BorderRadius.vertical(top: Radius.circular(18)),
//                   child: InkWell(
//                     onTap: () {},
//                     borderRadius:
//                       const BorderRadius.vertical(top: Radius.circular(18)),
//                     child: SizedBox(
//                       width: MediaQuery.of(context).size.width / 4,
//                       height: 75,
//                       child: Image.asset('assets/images/mic.jpg'),
//                     ),
//                   ),
//                 ),
//                InkWell(
//                     onTap: (){},
//                     borderRadius:
//                       const BorderRadius.vertical(top: Radius.circular(18)),
//                     child: SizedBox(
//                       width: MediaQuery.of(context).size.width / 4,
//                       height: 75,
//                       child: Image.asset('assets/images/micro.jpg'),
//                     ),
//                   ),
//                InkWell(
//                     onTap: (){},
//                     borderRadius:
//                       const BorderRadius.vertical(top: Radius.circular(18)),
//                     child: SizedBox(
//                       width: MediaQuery.of(context).size.width / 4,
//                       height: 75,
//                       child: Image.asset('assets/images/timer.jpg'),
//                     ),
//                   ),
//               ],
//             ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     borderRadius: BorderRadius.circular(50),
//                     onTap: () {},
//                     child: Padding(
//                       padding: const EdgeInsets.all(1),
//                       child: Image.asset('assets/images/info.jpg'),
//                     ),
//                   ),
//                  InkWell(
//                     borderRadius: BorderRadius.circular(50),
//                     onTap: (){},
//                     child: Padding(
//                       padding: const EdgeInsets.all(1),
//                       child: Image.asset('assets/images/settings.jpg'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 25,
//               ),
//               child: Column(
//                 children: [
//                   Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: 150,
//                     color: Colors.black,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       const Text(
//                         '43.1',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 80,
//                           color: Color.fromARGB(255, 60, 60, 60),
//                         ),
//                       ),
//                       Container(
//                         height: 50,
//                         width: 1,
//                         color: Colors.grey,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: const [
//                           Text(
//                             'Min 35.1',
//                             style: TextStyle(
//                               fontSize: 18,
//                               color: Colors.green,
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             'Max 77.3',
//                             style: TextStyle(
//                               fontSize: 18,
//                               color: Colors.red,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                  )
//                 ],
//               ),
//             ),
           
//           ],
//         ),
//       ),
//     );
//   }
// }

