import 'package:flutter/material.dart';
import './product.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Black GTS 150',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://www.piaggiosapa.vn/uploads/files/2019/08/10/thumbs-555-370-0--1/GTS-SuperTech300hpe.jpeg',
    ),
    Product(
      id: 'p2',
      title: 'Blue GTS 150',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://www.piaggiosapa.vn/uploads/files/2019/07/22/thumbs-555-370-0--1/GTS-Super-Sport-300-2019-Matt-Blue.png',
    ),
    Product(
      id: 'p3',
      title: 'Grey GTS 150',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://www.piaggiosapa.vn/uploads/files/2019/07/22/thumbs-555-370-0--1/GTS-Super-Sport-300-2019-Matt-Grey.png',
    ),
    Product(
      id: 'p4',
      title: 'White GTS 150',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://www.piaggiosapa.vn/uploads/files/2019/07/22/thumbs-555-370-0--1/GTS-Super-Sport-300-2019-White.png',
    ),
    Product(
      id: 'p5',
      title: 'Orange GTS 150',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://www.piaggiosapa.vn/uploads/files/2020/01/30/thumbs-555-370-0--1/Untitled.png',
    ),
    Product(
      id: 'p6',
      title: 'Red Sprint',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://www.piaggiosapa.vn/uploads/files/2020/01/30/thumbs-555-370-0--1/sprint-led-s-n-1.png',
    ),
    Product(
      id: 'p7',
      title: 'Red GTS 150',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://www.piaggiosapa.vn/uploads/files/2019/07/05/thumbs-555-370-0--1/3.png',
    ),
    Product(
      id: 'p8',
      title: 'Yellow GTS 150',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://www.piaggiosapa.vn/uploads/files/2019/07/05/thumbs-555-370-0--1/1.png',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}