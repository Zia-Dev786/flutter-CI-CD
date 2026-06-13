import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(backgroundColor: Colors.red,),
                  Text('name')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.red,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.red,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.red,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.red,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.red,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.red,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.red,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.red,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.red,),
            ),
          ],)
        ),
        Expanded(
          child: ListView(
            children: [

                ListTile(
        leading: CircleAvatar(child: Icon(Icons.person),backgroundColor: Colors.blue,),
        title: Text('Iqrash'),
        subtitle: Text('Hi'),
      ),
      ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_vNBijoGgu-MRopv6QLFfe6aNvK1MLnNx7A&s'),),
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
            ],
          ),
        )

    
    ],);
  }
}