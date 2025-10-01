import 'package:flutter/material.dart';

import '../widget/appstring.dart';

List popularlist = [
  {'image': 'assets/images/adidas.png', 'title': AppString.adidasShoe},
  {'image': 'assets/images/chair.png', 'title': AppString.gamingChair},
  {'image': 'assets/images/mack.png', 'title': AppString.macBook},
  {'image': 'assets/images/watches.png', 'title': AppString.fossilWatch},
];

List recommendedlist = [
  {
    'image': 'assets/images/nikeshoes.png',
    'title': AppString.newBalanceShoes,
    'subtitle': AppString.price299,
  },
  {
    'image': 'assets/images/iphone14.png',
    'title': AppString.iPhone14,
    'subtitle': AppString.price1099,
  },
  {
    'image': 'assets/images/airbuds.png',
    'title': AppString.airBeats,
    'subtitle': AppString.price5999,
  },
  {
    'image': 'assets/images/jacket.png',
    'title': AppString.newBalanceTshirt,
    'subtitle': AppString.price15999,
  },
];

class Categoriesscreen extends StatelessWidget {
  const Categoriesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _appbar(),
            SizedBox(height: 20),
            _popularsearchWidget(),
            SizedBox(height: 20),
            _recommendedWidget(),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  _appbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Row(
          children: [
            Flexible(
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey,
                    ),
                    hintText: AppString.searchHint,
                    suffixIcon: Icon(Icons.tune),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _popularsearchWidget() {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            AppString.popularSearch,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemCount: popularlist.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: 100,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 80,
                      child: Image.asset(
                        popularlist[index]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        '${popularlist[index]['title']}',
                        style: TextStyle(
                          fontSize: 13,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  _recommendedWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        
        children: [
          Row(
            children: [
              Text(
                AppString.recommendForYou,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              child: GridView.builder(
                shrinkWrap: true,

                itemCount: recommendedlist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 200,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          '${recommendedlist[index]['image']}',
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            '${recommendedlist[index]['title']}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '${recommendedlist[index]['subtitle']}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.amber,
                              ),
                            ),
                            Column(children: []),
                            Text(
                              AppString.rating,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              AppString.sold,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 25,
                              ),
                              Text(
                                AppString.location,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
