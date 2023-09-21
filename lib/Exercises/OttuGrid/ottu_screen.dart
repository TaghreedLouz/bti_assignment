import 'package:bti_assignment/Exercises/OttuGrid/ottu_model.dart';
import 'package:bti_assignment/Exercises/OttuGrid/products_widget.dart';
import 'package:flutter/material.dart';

import 'ottu_data.dart';

class OttuScreen extends StatefulWidget {
  static var productList;

  @override
  State<OttuScreen> createState() => _OttuScreenState();
}

class _OttuScreenState extends State<OttuScreen> {
  List<Category> categories = CategoryList.map((e) => Category(e)).toList();
  static List<Product> productList =[];
  int selectedCategory = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red[800],
          title: Text("Home"),
          centerTitle: true),
      body: Container(
        color: Colors.grey[100],
        child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.network(
                  "https://images.crunchbase.com/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/gkklwfovmqbetq7tmqhv",
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
                child: Text("Categories",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          selectedCategory = index;
                          productList = categories[index].products ?? [];
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 45,
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: index == selectedCategory
                                    ? Colors.red[800]
                                    : Colors.grey[600],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(categories[index].name ?? "",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white)),
                            ),
                            Visibility(
                              visible: selectedCategory == index ? true : false,
                              child: Container(
                                width: 60,
                                  padding: EdgeInsets.all(5),
                                  alignment: Alignment.center,
                                  height: 2,
                                  child: Text(categories[index].name ?? "",style: TextStyle(color: Colors.transparent)),
                                  color: Colors.grey[600],),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Expanded(child: GridView.builder(
                  padding: EdgeInsets.all(16),
                  itemCount: productList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.4),
                  itemBuilder: (context, index) => Container(
                    color: Colors.white,
                    height: 450,
                    child: Column(
                      children: [
                        Image.network(
                          productList[index].image ?? "",
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [

                              Text(productList[index].name ?? "",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                              Spacer(),
                              Text("${productList[index].price} \$",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent,
                                  )),

                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Text("datadatadatadatadatadata"),
                        // ),
                        Spacer(),
                        Container(
                          height: 30,
                          color: Colors.red[800],
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              Text("Add Cart",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        )
                      ],
                    ),
                  )))
            ]),
      ),
    );
  }
}
