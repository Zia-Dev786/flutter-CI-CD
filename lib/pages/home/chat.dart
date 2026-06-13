// import 'package:flutter/material.dart';

// class ChatPage extends StatelessWidget {
//   const ChatPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text('Iqrash'),
//           subtitle: Text('Hi'),
//           trailing: CircleAvatar(radius: 10, backgroundColor: Colors.green,child: Text('2',style: TextStyle(fontSize: 10,color: Colors.white),),),
//         ),
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text('Iqrash'),
//           subtitle: Text('Hi'),
//         ),
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text('Iqrash'),
//           subtitle: Text('Hi'),
//         ),
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text('Iqrash'),
//           subtitle: Text('Hi'),
//         ),
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text('Iqrash'),
//           subtitle: Text('Hi'),
//         ),
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text('Iqrash'),
//           subtitle: Text('Hi'),
//         ),
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text('Iqrash'),
//           subtitle: Text('Hi'),
//         ),
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text('Iqrash'),
//           subtitle: Text('Hi'),
//         ),
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text('Iqrash'),
//           subtitle: Text('Hi'),
//         ),
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text('Iqrash'),
//           subtitle: Text('Hi'),
//         ),
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text('Iqrash'),
//           subtitle: Text('Hi'),
//         ),
//       ],
//     );
//   }
// }



// // system restart 



import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.person),
        title: Text('Iqrash'),
        subtitle: Text('Hi'),
        trailing: CircleAvatar(
          radius: 10,
          backgroundColor: Colors.green,
          child: Text('2', style: TextStyle(fontSize: 10, color: Colors.white)),
        ),
      ),
    );
  }
}

//component 