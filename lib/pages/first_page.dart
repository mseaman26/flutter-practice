import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
              child: 
                Text('Drawer Herader')
            ),
            ListTile(
              title: Text('H O M E'),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('S E T T I N G S'),
              leading: Icon(Icons.settings),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              title: Text('Third Item'),
              onTap: (){
                Navigator.pop(context);
              },
            ), 
          ],
        ),
        ),
      
      backgroundColor: Colors.blue,
      body: GridView.builder(
        itemCount: 64,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8), 
        itemBuilder: (context, index){
          bool flip = (index / 8).floor() % 2 != 0;
          return Container(
            height: 50,
            color: flip ? 
              index % 2 == 0 ? Colors.black : Colors.red : 
              index % 2 == 0 ? Colors.red : Colors.black,
          );
        },
      ),
      //button to navivate to second page
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/second');
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}