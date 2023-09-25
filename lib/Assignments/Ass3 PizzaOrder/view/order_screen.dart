import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String selectedSize = "صنف 1";
  int quantity = 1;
  double price = 21.00;
  double sizePrice = 0;
  double totalPrice = 21.00;
  double selectedSizePrice = 0;

  List<bool> isSelectedList = [false, false, false];
  List<String> sizeOptions = ["صنف 1", "صنف 2", "صنف 3"];
  List<double> sizePrices = [0.00, 9.00, 18.00];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGl6emF8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "بيتزا بالخضار",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "بيتزا بالخضار مميزة",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 120,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (!(quantity >= 10)) {
                                  quantity++;
                                  totalPrice = totalPrice + price;
                                }
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.cyanAccent[400],
                              size: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              quantity.toString(),
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (!(quantity <= 1)) {
                                  quantity--;
                                  totalPrice = totalPrice - price;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              size: 25,
                              color: Colors.cyanAccent[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      textDirection: TextDirection.rtl,
                      "${price + selectedSizePrice} د.أ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 6,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "اختيارك من الحجم:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Text(
                      "(اختياري)",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  textDirection: TextDirection.rtl,
                  "اختر من القائمة",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Row(
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              title: Text(""),
                              value: selectedSize == sizeOptions[0],
                              onChanged: (value) {
                                setState(() {
                                  if (value!) {
                                    selectedSize = sizeOptions[0];
                                    sizePrice = sizePrices[0];
                                  } else {
                                    selectedSize = sizeOptions[0];
                                    //   sizePrice = 0.00;
                                  }
                                  totalPrice = price + sizePrice;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Colors.cyanAccent[400],
                              checkColor: Colors.white,
                            ),
                          ),
                          Text(sizeOptions[0], style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Divider(
                        thickness: 2.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Row(
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              title: Text("(${sizePrices[1]} د.ا)",
                                  style: TextStyle(color: Colors.black26)),
                              value: selectedSize == sizeOptions[1],
                              onChanged: (value) {
                                setState(() {
                                  if (value!) {
                                    selectedSize = sizeOptions[1];
                                    sizePrice = sizePrices[1];
                                  } else {
                                    selectedSize = sizeOptions[1];
                                    //   sizePrice = 0.00;
                                  }
                                  totalPrice = price + sizePrice;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Colors.cyanAccent[400],
                              checkColor: Colors.white,
                            ),
                          ),
                          Text(sizeOptions[1], style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Divider(
                        thickness: 2.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Row(
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              title: Text("(${sizePrices[2]} د.ا)",
                                  style: TextStyle(color: Colors.black26)),
                              value: selectedSize == sizeOptions[2],
                              onChanged: (value) {
                                setState(() {
                                  if (value!) {
                                    selectedSize = sizeOptions[2];
                                    sizePrice = sizePrices[2];
                                  } else {
                                    selectedSize = sizeOptions[2];
                                    //   sizePrice = 0.00;
                                  }
                                  totalPrice = price + sizePrice;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Colors.cyanAccent[400],
                              checkColor: Colors.white,
                            ),
                          ),
                          Text(sizeOptions[2], style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 6,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "اختيارك من الاضافات",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Text(
                      "(اختياري)",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  textDirection: TextDirection.rtl,
                  "اختر من القائمة",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Row(
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              title: Text("",
                                  style: TextStyle(color: Colors.black26)),
                              value: isSelectedList[0],
                              onChanged: (value) {
                                setState(() {
                                  isSelectedList[0] = value!;
                                  totalPrice = totalPrice + sizePrices[0];
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Colors.cyanAccent[400],
                            ),
                          ),
                          Text(sizeOptions[0], style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Divider(
                        thickness: 2.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Row(
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              title: Text("(${sizePrices[1]} د.ا)",
                                  style: TextStyle(color: Colors.black26)),
                              value: isSelectedList[1],
                              onChanged: (value) {
                                setState(() {
                                  isSelectedList[1] = value!;
                                  if (value!) {
                                    totalPrice += sizePrices[1];
                                  } else {
                                    totalPrice -= sizePrices[1];
                                  }
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Colors.cyanAccent[400],
                            ),
                          ),
                          Text(sizeOptions[1], style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Divider(
                        thickness: 2.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Row(
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              title: Text("(${sizePrices[2]} د.ا)",
                                  style: TextStyle(color: Colors.black26)),
                              value: isSelectedList[2],
                              onChanged: (value) {
                                setState(() {
                                  isSelectedList[2] = value!;
                                  if (value!) {
                                    totalPrice += sizePrices[2];
                                  } else {
                                    totalPrice -= sizePrices[2];
                                  }
                                });

                                // setState(() {
                                //   isSelectedList[2] = value!;
                                //   totalPrice= totalPrice+sizePrices[2];
                                // });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Colors.cyanAccent[400],
                            ),
                          ),
                          Text(sizeOptions[2], style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                      ),
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent[400],
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${totalPrice}  د.ا",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "اضافة للسلة",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
