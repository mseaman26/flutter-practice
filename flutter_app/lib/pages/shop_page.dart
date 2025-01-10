import 'package:flutter/material.dart';
import 'package:flutter_app/components/shoe_tile.dart';
import 'package:flutter_app/models/cart.dart';
import 'package:flutter_app/models/shoe.dart';
import 'package:provider/provider.dart';


class ShopPage extends StatefulWidget{
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(context: context, builder: (context) => AlertDialog(
       title: Text('Successfully added!'),
       content: Text('Check your cart'),
    ));
  }

  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) => 
        Column(
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
              scrollDirection: Axis.horizontal,
              itemCount: value.getShoeList().length,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                  shoe: shoe, onTap: () => addShoeToCart(shoe),);
              }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),   
          )
        ],
      )

    );
  }
}