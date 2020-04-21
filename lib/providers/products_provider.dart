import 'package:flutter/material.dart';
import './product.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Carrots',
      description: 'A Fresh Carrot',
      price: 15000,
      imageUrl:
          'https://images.all-free-download.com/images/graphicthumb/carrot_hd_picture_2_167268.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Apple',
      description: 'Fresh red apple',
      price: 12500,
      imageUrl:
          'https://i.pinimg.com/originals/1d/b7/1b/1db71b77c3ef4c560cb5a5c82252c8fd.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Dates',
      description: 'A Fresh Dates',
      price: 30000,
      imageUrl:
          'https://i0.wp.com/post.healthline.com/wp-content/uploads/2019/11/medjool-dates-1296x728-header-1296x728.jpg?w=1155&h=1528',
    ),
    Product(
      id: 'p4',
      title: 'Corn',
      description: 'Prepare any meal you want.',
      price: 12000,
      imageUrl:
          'https://image.shutterstock.com/image-photo/single-ear-corn-isolated-on-260nw-793795156.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Garlic',
      description: 'Prepare any meal you want.',
      price: 8000,
      imageUrl:
          'https://www.verywellfamily.com/thmb/xPbyHn675F8_Tu-JWP6otQD5Uhs=/3995x2996/smart/filters:no_upscale()/GettyImages-149107499MultibitsPhotolibraryGarlic-56a0b9733df78cafdaa461e1.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Tenderloin',
      description: 'A fresh tenderloin',
      price: 120000,
      imageUrl:
          'https://naturallyvietnam.com/wp-content/uploads/2019/03/beef-tenderloin-2.jpg',
    ),
    Product(
      id: 'p7',
      title: 'Red Nila',
      description: 'Fresh Red Nila',
      price: 49.99,
      imageUrl:
          'https://cdn6.bigcommerce.com/s-ul1e48c1/product_images/uploaded_images/wholeyresourceimage3.jpg',
    ),
    Product(
      id: 'p8',
      title: 'Broccoli',
      description: 'A Fresh Broccoli',
      price: 7500,
      imageUrl:
          'https://cf.shopee.co.id/file/df50a245e8cd4e5c2340f60d4cd82371',
    ),
  ];

  var _showFavoritesOnly = false;


  List<Product> get items {
    if(_showFavoritesOnly) {
      return _items.where((prodItem) => prodItem.isFavorite).toList();
    }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}