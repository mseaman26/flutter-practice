import 'package:flutter/material.dart';
import 'package:flutter_app/components/bottom_nav_bar.dart';
import 'package:flutter_app/pages/shop_page.dart';
import 'package:flutter_app/pages/cart_page.dart';

class HomePage extends StatefulWidget{
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
              ),
            );
          }
        ),
      ),
      body: _pages[_currentIndex],
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Padding(
          //add top padding
          padding: const EdgeInsets.only(top: 50),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset('lib/images/nikeLogo.png', color: Colors.white, width: 200,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Divider(color: Colors.grey[800],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:25.0),
                      child: ListTile(
                        leading: Icon(Icons.home, color: Colors.white),
                        title: Text('Home', style: TextStyle(color: Colors.white),),
                        onTap: (){
                       
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: ListTile(
                        leading: Icon(Icons.info, color: Colors.white),
                        title: Text('About', style: TextStyle(color: Colors.white),),
                        onTap: (){
                       
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, bottom: 25),
                  child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.white),
                    title: Text('Logout', style: TextStyle(color: Colors.white),),
                    onTap: (){
                   
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(onTabChange: (index) => navigateBottomBar(index)),
    );
  }
}