import 'package:flutter/material.dart';
import 'package:flutter_app/components/shoe_tile.dart';


class ShopPage extends StatelessWidget{
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search'),
                Icon(Icons.search)
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text('Everyone flies, some fly longer than others',
              style: TextStyle(color: Colors.grey[600]),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text('Hot Picks 🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
                ),
                Text('See All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  )
                ),


              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ShoeTile();
              }),
          )
        ],
      ),
    );
  }
}