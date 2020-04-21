import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/cart_provider.dart' show CartProvider;
import '../widgets/cart_item.dart';

class CartScreen extends StatelessWidget {

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {

    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(children: <Widget>[
          Card(
              margin: EdgeInsets.all(15.0),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Text('Total', 
                    style: TextStyle(fontSize: 20),),
                    SizedBox(width: 10,),
                    Spacer(),
                    Chip(
                      label: Text('Rp.${cart.totalAmount}', style: TextStyle(color: Theme.of(context).primaryTextTheme.title.color),), 
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    FlatButton(
                      child: Text('Order Now'),
                      onPressed: () {},
                      textColor: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, i) => CartItem(
                  cart.items.values.toList()[i].id, 
                  cart.items.values.toList()[i].price, 
                  cart.items.values.toList()[i].quantity, 
                  cart.items.values.toList()[i].title) ,
                itemCount: cart.items.length,
              ),
            )
          ],
        ),
      );
  }
}