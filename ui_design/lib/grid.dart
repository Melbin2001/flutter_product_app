import 'package:flutter/material.dart';
import 'package:ui_design/productpage.dart';

class Gridview extends StatelessWidget {
  final List<String> price = [
    ' Rs299',
    ' Rs199',
    ' Rs399',
    ' Rs249',
    ' Rs299',
    ' Rs299',
    ' Rs299',
    ' Rs299',
    ' Rs299',
    ' Rs299',
  ];
  final List<String> names = [
    ' Belt Bag',
    ' Office Code',
    ' Hang Top',
    ' Old Fashion',
    ' Square Bag',
    ' Casual Bag',
    ' Wallet Bag',
    ' White Bag',
    ' Boxy Bag',
    ' Yellow Bag',
  ];
  final List<String> images = [
    'android/assets/images/bagproduct1.png',
    'android/assets/images/bagproduct2.png',
    'android/assets/images/productbag2.png',
    'android/assets/images/productbag3.png',
    'android/assets/images/productbag4.png',
    'android/assets/images/productbag5.png',
    'android/assets/images/productbag6.png',
    'android/assets/images/productbag7.png',
    'android/assets/images/productbag8.png',
    'android/assets/images/productbag10.png',
  ];
  final List<Color> colors = [
    const Color.fromARGB(255, 153, 53, 53),
    const Color.fromARGB(255, 167, 27, 27),
    const Color.fromARGB(224, 200, 202, 182),
    const Color.fromARGB(224, 25, 25, 26),
    const Color.fromARGB(255, 122, 19, 19),
    const Color.fromARGB(224, 4, 1, 8),
    const Color.fromARGB(224, 141, 15, 63),
    const Color.fromARGB(224, 212, 209, 216),
    const Color.fromARGB(224, 13, 83, 139),
    const Color.fromARGB(224, 211, 231, 26),
  ];
  Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(255, 250, 247, 248),
        title: const Text(
          '      Women Store',
          style: TextStyle(
              color: Color.fromARGB(255, 14, 13, 13),
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              fontSize: 28),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_sharp,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(7),
          children: const [
            DrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 238, 8, 84),
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 28,
                      fontStyle: FontStyle.italic),
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 252, 249, 250),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 235, crossAxisCount: 2),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return GestureDetector(
               onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  Productpage()),
                        );
                      },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: colors[index],
                      ),
                      height: 170,
                      width: 220,
                      child: Image.asset(images[index]),
                    ),
                    Text(
                      names[index],
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 68, 66, 66),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      price[index],
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
            );
            
          },
        ),
      ),
    );
  }
}
