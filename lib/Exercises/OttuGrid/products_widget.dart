import 'package:bti_assignment/Exercises/OttuGrid/ottu_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ottu_model.dart';

class ProductsWidget extends StatefulWidget {

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(16),
        itemCount: OttuScreen.productList.length,
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
                    OttuScreen.productList[index].image ?? "",
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text("${OttuScreen.productList[index].price} \$",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            )),
                        Spacer(),
                        Text(OttuScreen.productList[index].name ?? "",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
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
                        Text("اضف للسلة",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  )
                ],
              ),
            ));
  }
}
