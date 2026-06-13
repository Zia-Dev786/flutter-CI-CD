// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//     appBar:AppBar(
//       leading: Icon(Icons.menu_open_rounded),
//       backgroundColor: Colors.teal,
//       title: Text('Appbar',style: TextStyle(fontSize: 18,color: Colors.white,
//       fontWeight:FontWeight.bold ),),
//       centerTitle: true,
//       actions: [
//         Icon(Icons.person,color: Colors.white,size: 24,),
//         SizedBox(width: 10,)
//       ],
//     ) ,
//     body: Container(
//       color: Colors.blue,
//       width: 500,
//       padding: EdgeInsets.all(12),
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(width: 200,height: 100, color: Colors.grey,),
//             Container(width: 200,height: 100, color: const Color.fromARGB(255, 170, 72, 72),),
//             SizedBox(height: 40,),
//             Container(width: 200,height: 200, color: const Color.fromARGB(255, 99, 153, 106),),
//             Container(width: 200,height: 200, color: const Color.fromARGB(255, 155, 122, 122),),
//           ],
//         ),
//       ),
//     ),
//   );
//   }
// }

// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.menu_open_rounded),
//         backgroundColor: Colors.teal,
//         title: Text(
//           'Appbar',
//           style: TextStyle(
//             fontSize: 18,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           Icon(Icons.person, color: Colors.white, size: 24),
//           SizedBox(width: 10),
//         ],
//       ),
//       body: Column(
//         children: [
//           Container(
//             // height: 200,
//             margin: EdgeInsets.only(top: 12),
//             padding: EdgeInsets.all(6),
//             color: Colors.blue,
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 // crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Container(
//                     // margin: EdgeInsets.all(),
//                     width: 100,
//                     height: 100,
//                     color: Colors.grey,
//                   ),
//                   SizedBox(width: 10),
//                   Container(
//                     width: 100,
//                     height: 100,
//                     color: const Color.fromARGB(255, 170, 72, 72),
//                   ),
//                   SizedBox(width: 10),
//                   Container(
//                     width: 100,
//                     height: 100,
//                     color: const Color.fromARGB(255, 177, 151, 151),
//                   ),
//                   SizedBox(width: 10),
//                   Container(
//                     width: 100,
//                     height: 100,
//                     color: const Color.fromARGB(255, 170, 72, 72),
//                   ),
//                   SizedBox(width: 10),
//                   Container(
//                     width: 100,
//                     height: 100,
//                     color: const Color.fromARGB(255, 72, 170, 105),
//                   ),
//                   // SizedBox(height: 40,),
//                   // Container(width: 200,height: 200, color: const Color.fromARGB(255, 99, 153, 106),),
//                   // Container(width: 200,height: 200, color: const Color.fromARGB(255, 155, 122, 122),),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:miniproject/pages/home/call.dart';
import 'package:miniproject/pages/home/chat.dart';
import 'package:miniproject/pages/home/status.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text('Title',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
        actions: [
          Icon(Icons.more_vert,color: Colors.white,),
        SizedBox(width: 20,)
        ],
        bottom: TabBar(
          labelStyle: TextStyle(color: const Color.fromARGB(255, 228, 228, 228),fontSize: 16),
          unselectedLabelStyle:TextStyle(color: const Color.fromARGB(255, 255, 255, 255)) ,    
          indicatorWeight: 5,     
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
          Tab(text: 'Chat',),
          Tab(text: 'Status', ),
          Tab(text: 'Call',),
        ]),
        ),
        body: TabBarView(children: [
         ChatPage(),
          StatusPage(),
          CallPage(),
        ]),
      ),
    );
  }
}