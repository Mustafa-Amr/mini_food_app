import 'package:flutter/material.dart';
import 'package:mini_food_app/item_model.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
bool isGridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Food Delivery',
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            //Todo: click
          },
              icon: Icon(Icons.shopping_cart,color: Colors.black,)
          )
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding:  EdgeInsets.all(20),
                child: TextField(
                  style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(35)
                    ),
                    filled: true,
                    fillColor: Colors.red.shade100,
                    prefixIcon: Icon(Icons.search,color: Colors.red,),
                    hintText: 'Search For Food',
                    hintStyle: TextStyle(fontSize: 18,color: Colors.grey.shade700),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(35)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                    itemCount: ItemModel.listItem.length,
                    itemBuilder: (context, index) {
                      final item = ItemModel.listItem[index];
                      return productItem(item);
                    },
                )
              ),
              SizedBox(height: 20,),
              Text('Featured Items',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              ///GridView
              Container(
                margin: EdgeInsets.symmetric(horizontal: 38),
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    // زرار الـ List View
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isGridView = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            // لو مش GridView، لونه أحمر، غير كدة شفاف
                            color: !isGridView ? Colors.red : Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              'List View',
                              style: TextStyle(
                                color: !isGridView ? Colors.white : Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // زرار الـ Grid View
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isGridView = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isGridView ? Colors.red : Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              'Grid View',
                              style: TextStyle(
                                color: isGridView ? Colors.white : Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
        ),
      ),
    );
  }

  productItem(ItemModel item) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(item.image),
          Text(item.name,style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
