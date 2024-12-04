import 'package:flutter/material.dart';

class Productpage extends StatelessWidget {
  final List<Color> colors = [
    const Color.fromARGB(226, 173, 3, 3),
    const Color.fromARGB(225, 4, 236, 55),
    const Color.fromARGB(225, 90, 5, 226),
  ];
  Productpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(226, 173, 3, 3),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        height: 800,
        width: 400,
        color: const Color.fromARGB(226, 173, 3, 3),
        child: Stack(
          children: [
            const Positioned(
                left: 29,
                child: Text(
                  'Aristocratic Hand Bag',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                )),
            const Positioned(
                left: 25,
                top: 25,
                child: Text(
                  'OFFICE CODE',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                )),
            const Positioned(
                top: 200,
                left: 40,
                child: Text(
                  'Price',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic),
                )),
            const Positioned(
                top: 230,
                left: 40,
                child: Text(
                  'Rs 299',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                )),
            Positioned(
                top: 300,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  height: 500,
                  width: 400,
                )),
            Positioned(
                top: 125,
                left: 125,
                child: Image.asset(
                  'android/assets/images/bagproduct2.png',
                  width: 300,
                  height: 300,
                )),
            const Positioned(
                top: 420,
                left: 54,
                child: Text(
                  'Color',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500),
                )),
            const Positioned(
                top: 420,
                left: 295,
                child: Text(
                  'Color',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500),
                )),
            const Positioned(
                top: 445,
                left: 285,
                child: Text(
                  '15 cm',
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                )),
            const Positioned(
                top: 490,
                left: 20,
                child: Text(
                  textAlign: TextAlign.center,
                  "Lorem Ipsum is simply dummy text of the printing\n and typesetting industry. Lorem Ipsum has been the\n industry's standard dummy text ever since. When an\n unknown printer took a galley.",
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 601,
                left: 32,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.minimize,
                      color: Colors.black,
                    ))),
            Positioned(
                top: 609,
                left: 82,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ))),
            const Positioned(
                top: 623,
                left: 73,
                child: Text(
                  '01',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                )),
            const Positioned(
                top: 450,
                left: 55,
                child: PhysicalModel(
                  shadowColor: Colors.black,
                  shape: BoxShape.circle,
                  elevation: 10,
                  color: Colors.transparent,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Color.fromARGB(226, 173, 3, 3),
                  ),
                )),
            const Positioned(
                top: 450,
                left: 70,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Color.fromARGB(255, 42, 5, 102),
                )),
            const Positioned(
                top: 450,
                left: 85,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Color.fromARGB(255, 5, 156, 25),
                )),
            Positioned(
                top: 615,
                left: 300,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color.fromARGB(213, 243, 18, 18),
                  child: IconButton(
                      alignment: Alignment.center,
                      onPressed: () {},
                      icon: const Icon(
                        size: 22,
                        Icons.favorite,
                        color: Colors.white,
                      )),
                )),
            Positioned(
                top: 695,
                left: 190,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        fixedSize: WidgetStatePropertyAll(Size(150, 45)),
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(223, 228, 21, 7))),
                    onPressed: () {},
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ))),
            Positioned(
                top: 700,
                left: 60,
                child: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromARGB(255, 194, 16, 3))),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        size: 30,
                        color: Colors.black,
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
