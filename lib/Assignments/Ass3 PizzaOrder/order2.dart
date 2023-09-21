import 'package:flutter/material.dart';

class MealDetailsScreen extends StatefulWidget {
  const MealDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MealDetailsScreen> createState() => _MealDetailsScreenState();
}

class _MealDetailsScreenState extends State<MealDetailsScreen> {
  bool flag = false;
  bool flag2 = false;
  int selectedOption = 1;
  int quantity = 1; // الكمية الافتراضية

  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  void increaseQuantity() {
    if (quantity < 10) {
      setState(() {
        quantity++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(23),
                    bottomRight: Radius.circular(23),
                  ),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
                    width: double.infinity,
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "بيتزا بالخضار",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5, top: 8),
                  child: Text("بيتزا بالخضار مميزة",
                      style: TextStyle(color: Colors.black45, fontSize: 15)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            border: Border.all(color: Colors.black12, width: 1)),
                        child: SizedBox(
                          height: 35,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 9),
                                child: IconButton(
                                    onPressed: increaseQuantity,
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.lightBlueAccent[100],
                                      size: 15,
                                    )),
                              ),
                              Text(quantity.toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8, left: 8),
                                child: IconButton(
                                    onPressed: decreaseQuantity,
                                    icon: Icon(
                                      Icons.minimize,
                                      color: Colors.lightBlueAccent[100],
                                      size: 15,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                      Text("21.00  د.ا",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ],
                  ),
                ),
                Divider(
                  thickness: 5,
                  color: Colors.black12,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "(اختياري)",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "اختيارك من الحجم: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 14, top: 12, bottom: 19),
                  child: Text("اختر من القائمة",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            setState(() {
                              selectedOption = 1;
                            });
                          },
                          child: customRadio(1)),
                      Text("صنف 1 ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 2,
                    color: Colors.black12,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            setState(() {
                              selectedOption = 2;
                            });
                          },
                          child: customRadio(2)),
                      SizedBox(
                        width: 15,
                      ),
                      Text("(9.00+ د.ا)", textAlign: TextAlign.left),
                      SizedBox(
                        width: 175,
                      ),
                      Text("صنف 2 ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 2,
                    color: Colors.black12,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            setState(() {
                              selectedOption = 3;
                            });
                          },
                          child: customRadio(3)),
                      SizedBox(
                        width: 15,
                      ),
                      Text("(9.00+ د.ا)", textAlign: TextAlign.left),
                      SizedBox(
                        width: 175,
                      ),
                      Text("صنف 3 ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right),
                    ],
                  ),
                ),
                Divider(
                  thickness: 5,
                  color: Colors.black12,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "(اختياري)",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "اختيارك من الاضافات ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 14, top: 12, bottom: 19),
                  child: Text("اختر من القائمة",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                ),
                CheckboxListTile(
                  value: flag,
                  onChanged: (value) {
                    setState(() {
                      flag = value!;
                    });
                  },
                  title: Text(
                    "صنف 1",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 2,
                    color: Colors.black12,
                  ),
                ),
                CheckboxListTile(
                  value: flag2,
                  onChanged: (value) {
                    setState(() {
                      flag2 = value!;
                    });
                  },
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("(9.00+ د.ا)", textAlign: TextAlign.left),
                      Text(
                        "صنف 2",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
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
                              color: Colors.lightBlueAccent[100],
                              borderRadius: BorderRadius.all(Radius.circular(8))),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "21.00  د.ا",
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
                )
              ],
            ),
          )),
    );
  }

  Widget customRadio(int optionValue) {
    return Container(
      width: 22,
      height: 22,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(3)),
      child: selectedOption == optionValue
          ? Icon(
        Icons.check,
        size: 16.0,
        color: Colors.black,
      )
          : null,
    );
  }
}