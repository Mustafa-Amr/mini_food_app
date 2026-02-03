import 'item_model.dart';

class ItemModel {
 final String name;
 final String image;

  ItemModel({required this.name,
    required this.image}
      );
  static List<ItemModel> listItem =[
    ItemModel(name: 'Chicken Burger', image: 'assets/images/image 3.png'),
    ItemModel(name: 'Beef bacon', image: 'assets/images/image 5.png'),
    ItemModel(name: 'Beef burger', image: 'assets/images/image 5.png'),
    ItemModel(name: 'Cheese burger', image: 'assets/images/image 3.png'),
    ItemModel(name: ' burger', image: 'assets/images/Burger.jpeg'),
    ItemModel(name: 'Pizza', image: 'assets/images/download.jpeg'),
    ItemModel(name: 'Cola', image: 'assets/images/download (1).jpeg'),

  ];
}
