import 'package:flutter/material.dart';

import '../widget/appstring.dart';
import 'itemscreen.dart';

final List itemlist = [
  {'image': 'assets/images/sanitise.png', 'title': 'Beauty'},
  {'image': 'assets/images/headphone.png', 'title': 'Accessories'},
  {'image': 'assets/images/dish.png', 'title': 'Food & Drink'},
  {'image': 'assets/images/mobile.png', 'title': 'Electronic'},
  {'image': 'assets/images/tv.png', 'title': 'Furniture'},
  {'image': 'assets/images/fashion.png', 'title': 'Fashion'},
  {'image': 'assets/images/health.png', 'title': 'Health'},
  {'image': 'assets/images/book.png', 'title': 'Stationary'},
];

class Productsscreen extends StatelessWidget {
  const Productsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            _appbarWidget(),
            productWidgrt(context),
            _flashsaleWidget(),
          ],
        ),
      ),
      bottomNavigationBar: _bottomnavagationWidget(),
    );
  }

  _appbarWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, size: 35),
        ),
        title: Text(
          AppString.lexury,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          Row( 
            children: [
              Icon(Icons.shopping_bag_outlined, size: 30),
              Icon(Icons.notifications_none, size: 35),
            ],
          ),
        ],
      ),
    );
  }

  productWidgrt(BuildContext context) {
    return Column(
      
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.menu),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: AppString.needed,
              hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(Icons.location_on, color: Colors.orange),
              Text(AppString.deliver, style: TextStyle(fontSize: 11)),
              Text(
                AppString.deliveryAddress,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 250,
          child: GridView.builder(
            itemCount: itemlist.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) {
              return Column(
              
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    backgroundImage: AssetImage('${itemlist[index]['image']}'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${itemlist[index]['title']}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/tab.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  AppString.flashSaleTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  AppString.flashSaleSubTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 6),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => itemsscreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(100, 50),
                  ),
                  child: Text(
                    AppString.shopNow,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _flashsaleWidget() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          child: Row(
            children: [
              Text(
                AppString.flashSale,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                AppString.endsIn,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(width: 5),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  minimumSize: Size(100, 30),
                ),
                child: Text(
                  AppString.time,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  AppString.seeall,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 94, 0),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topRight,
                  height: 200,
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                    ),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 246, 194, 175),
                        const Color.fromARGB(255, 166, 108, 87),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/mackbook.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      244,
                                      238,
                                      238,
                                    ),
                                    minimumSize: Size(40, 40),
                                    elevation: 10,
                                  ),
                                  child: Text(
                                    AppString.off,
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              AppString.mackbook,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // 2
                SizedBox(width: 20),
                Container(
                  alignment: Alignment.topRight,
                  height: 200,
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                    ),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 246, 194, 175),
                        const Color.fromARGB(255, 166, 108, 87),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/ipad.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          AppString.newIPad,
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _bottomnavagationWidget() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: AppString.home),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: AppString.cart,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: AppString.search,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: AppString.profile,
        ),
      ],
    );
  }
}
