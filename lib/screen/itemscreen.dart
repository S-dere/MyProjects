import 'package:flutter/material.dart';

import '../widget/appstring.dart';
import 'categoriesscreen.dart';

List<Map> productList = [
  {
    'image': 'assets/images/watch.png',
    'title': AppString.appleWatch,
    'subtitle': AppString.price15_99,
    'text': AppString.qty,
  },
  {
    'image': 'assets/images/mac.png',
    'title': AppString.grayIMac,
    'subtitle': AppString.price,
    'text': AppString.price16,
  },
  {
    'image': 'assets/images/pd.png',
    'title': AppString.wirelessHokitika,
    'subtitle': AppString.price999000,
  },
  {
    'image': 'assets/images/ultra2.png',
    'title': AppString.wirelessHokitika,
    'subtitle': AppString.price999000,
  },
  {
    'image': 'assets/images/watch.png',
    'title': AppString.wirelessHokitika,
    'subtitle': AppString.price999000,
  },
];

class itemsscreen extends StatefulWidget {
  const itemsscreen({super.key});

  @override
  State<itemsscreen> createState() => _ItemsscreenState();
}

class _ItemsscreenState extends State<itemsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [_appbarWidget(), _cardWidget(), _totalWidget()]),
    );
  }

  _totalWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(value: false, onChanged: (bool? value) {}),
              Text(
                AppString.selectAll,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(width: 8),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.total,
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        AppString.totalValue,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Categoriesscreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      minimumSize: Size(80, 40),
                    ),
                    child: Text(
                      AppString.checkout,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

_appbarWidget() {
  return AppBar(
    leading: Icon(Icons.arrow_back),
    centerTitle: true,
    title: Text(
      AppString.myCart,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Icon(Icons.search, size: 30),
      ),
    ],
  );
}

_cardWidget() {
  return SizedBox(
    height: 600,
    child: ListView.builder(
      itemCount: productList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Checkbox(value: false, onChanged: (bool? value) {}),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: Image.asset(
                        '${productList[index]["image"]}',
                        height: 90,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '${productList[index]['title']}',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '${productList[index]['subtitle']}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite_border, color: Colors.deepOrange),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.deepOrange),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Icon(Icons.remove, color: Colors.orange),
                              ),
                            ),
                            Text(
                              AppString.qty,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.deepOrange),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Icon(Icons.add, color: Colors.orange),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
