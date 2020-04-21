import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/cart_provider.dart';
import 'package:shopapp/screens/cart_screen.dart';
import 'package:shopapp/screens/product_detail_screen.dart';
import './providers/products_provider.dart';
import './screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ProductsProvider()),
        ChangeNotifierProvider.value(value: CartProvider()),
      ], 
      child: MaterialApp(
          title: 'Shop App',
          theme: ThemeData(
            primarySwatch: Colors.green,
            accentColor: Colors.green[300],
            fontFamily: 'Lato'
          ),
          home: ProductsOverviewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
          },
      ),
    );
  }
}