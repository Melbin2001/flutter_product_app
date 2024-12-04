import 'package:flutter/material.dart';
import 'package:ui_design/productpage.dart';

class Homescreen extends StatelessWidget {
  final List<String> price = [
    'Rs\n299',
    'Rs\n199',
    'Rs\n399',
    'Rs\n249',
    'Rs\n299',
    'Rs\n299',
    'Rs\n299',
    'Rs\n299',
    'Rs\n299',
    'Rs\n299',
  ];
  final List<String> names = [
    'Red Leather\nHandBag',
    'Brown Leather\nHandBag',
    'Red Leather\nHandBag',
    'Red Leather\nHandBag',
    'Red Leather\nHandBag',
    'Red Leather\nHandBag',
    'Red Leather\nHandBag',
    'Red Leather\nHandBag',
    'Red Leather\nHandBag',
    'Red Leather\nHandBag',
  ];
  final List<String> images = [
    'android/assets/images/bag1.jpg',
    'android/assets/images/bag11.jpg',
    'android/assets/images/bag12.jpg',
    'android/assets/images/bag4.jpg',
    'android/assets/images/bag5.jpg',
    'android/assets/images/bag6.jpg',
    'android/assets/images/bag7.jpg',
    'android/assets/images/bag8.jpg',
    'android/assets/images/bag9.jpg',
    'android/assets/images/bag10.jpg',
  ];

  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          backgroundColor: const Color.fromARGB(255, 231, 9, 83),
          title: const Text(
            '      Women Store',
            style: TextStyle(
                color: Colors.white,
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
        body: SafeArea(
            child: Container(
          color: const Color.fromARGB(255, 216, 152, 173),
          child: ListView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Card(
                  surfaceTintColor: const Color.fromARGB(255, 167, 49, 88),
                  color: Colors.white,
                  child: ListTile(
                    selectedColor: const Color.fromARGB(255, 194, 34, 87),
                    splashColor: const Color.fromARGB(255, 209, 65, 113),
                    minVerticalPadding: 20,
                    minTileHeight: 120,
                    leading: Image.asset(
                      images[index],
                      width: 60,
                      height: 100,
                      fit: BoxFit.fitHeight,
                    ),
                    title: Text(
                      names[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                    trailing: Text(
                      price[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Productpage()),
                      );
                    },
                  ),
                );
              }),
        )));
  }
}
