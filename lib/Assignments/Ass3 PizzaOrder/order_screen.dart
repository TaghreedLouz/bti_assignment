import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String? selectedSize = "صنف 1";
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  int count = 1;
  double price = 21.00;
  double add = 9.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    height: 35,
                    width: 100,
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
                              if (!(count >= 10)) {
                                count++;
                              }
                            });
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.cyanAccent[400],
                            size: 18,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            count.toString(),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (!(count <= 1)) {
                                count--;
                              }
                            });
                          },
                          child: Icon(
                            Icons.remove,
                            size: 18,
                            color: Colors.cyanAccent[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    textDirection: TextDirection.rtl,
                    "$price  د.ا",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                            value: selectedSize == "صنف 1",
                            onChanged: (value) {
                              setState(() {
                                selectedSize = value! ? "صنف 1" : null;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Colors.cyanAccent[400],
                            checkColor: Colors.white,
                          ),
                        ),
                        Text("صنف 1", style: TextStyle(fontSize: 18)),
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
                            title: Text("($add( د.ا ",
                                style: TextStyle(color: Colors.black26)),
                            value: selectedSize == "صنف 2",
                            onChanged: (value) {
                              setState(() {
                                selectedSize = value! ? "صنف 2" : null;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Colors.cyanAccent[400],
                            checkColor: Colors.white,
                          ),
                        ),
                        Text("صنف 2", style: TextStyle(fontSize: 18)),
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
                            title: Text("($add د.ا)",
                                style: TextStyle(color: Colors.black26)),
                            value: selectedSize == "صنف 3",
                            onChanged: (value) {
                              setState(() {
                                selectedSize = value! ? "صنف 3" : null;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Colors.cyanAccent[400],
                            checkColor: Colors.white,
                          ),
                        ),
                        Text("صنف 3", style: TextStyle(fontSize: 18)),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                            value: isSelected1,
                            onChanged: (value) {
                              setState(() {
                                isSelected1 = value!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Colors.cyanAccent[400],
                          ),
                        ),
                        Text("صنف 1", style: TextStyle(fontSize: 18)),
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
                            title: Text("($add د.ا)",
                                style: TextStyle(color: Colors.black26)),
                            value: isSelected2,
                            onChanged: (value) {
                              setState(() {
                                isSelected2 = value!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Colors.cyanAccent[400],
                          ),
                        ),
                        Text("صنف 2", style: TextStyle(fontSize: 18)),
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
                            title: Text("($add د.ا)",
                                style: TextStyle(color: Colors.black26)),
                            value: isSelected3,
                            onChanged: (value) {
                              setState(() {
                                isSelected3 = value!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Colors.cyanAccent[400],
                          ),
                        ),
                        Text("صنف 3", style: TextStyle(fontSize: 18)),
                      ],
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
}
