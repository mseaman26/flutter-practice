import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  //add the key to the constructor with a super key
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(

      backgroundColor: Colors.purple,
      body: Center(
        child: Text('Profile Page'),
      ),
      //button to navigate to first page
    );
  }
}