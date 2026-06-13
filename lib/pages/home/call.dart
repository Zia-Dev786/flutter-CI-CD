import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Iqrash'),
        trailing: Icon(Icons.call_made_rounded),
        
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Iqrash'),
        trailing: Icon(Icons.call_missed_outgoing,color: Colors.red,size: 24,),
   
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Iqrash'),
        subtitle: Text('Hi'),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Iqrash'),
        subtitle: Text('Hi'),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Iqrash'),
        subtitle: Text('Hi'),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Iqrash'),
        subtitle: Text('Hi'),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Iqrash'),
        subtitle: Text('Hi'),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Iqrash'),
        subtitle: Text('Hi'),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Iqrash'),
        subtitle: Text('Hi'),
      ),
    ],);
  }
}