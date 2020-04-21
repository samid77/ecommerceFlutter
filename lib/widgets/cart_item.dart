import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  
  final String id;
  final double price;
  final int quantity;
  final String title;

  CartItem(
    this.id,
    this.price,
    this.quantity,
    this.title
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15.0, 
        vertical: 4.0
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: EdgeInsets.all(5.0) ,
              child: FittedBox(child: Text('Rp.${price}'),),
            )
          ),
          title: Text(title),
          subtitle: Text('Total: Rp.${(price * quantity)}'),
          trailing: Text('${quantity} x'),
        ),),
    );
  }
}