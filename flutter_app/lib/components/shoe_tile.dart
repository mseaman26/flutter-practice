
import 'package:flutter/material.dart';
import 'package:flutter_app/models/shoe.dart';

class ShoeTile extends StatelessWidget{
  Shoe shoe;
  void Function() onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      padding: EdgeInsets.only(top: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(shoe.imagePath),
          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(shoe.description, style: TextStyle(color: Colors.grey[400]),),
          ),
          //price and details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shoe.name, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                    const SizedBox(height: 5,),
                    Text('\$${shoe.price}', style: TextStyle(
                      color: Colors.grey,
                    ),)
                  ],
                ),
                GestureDetector(
                  onTap: () => onTap(),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)
                      )
                    ),
                    child: Icon(Icons.add, color: Colors.white,)),
                )
              ],
              
            ),
          )
        ],
      ),
    );
  }
}