

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
  for(int icles = 0; icles < 5; icles++){
    print('i is: ${icles + 1}');
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

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
        )
      ),
    );
  }
}