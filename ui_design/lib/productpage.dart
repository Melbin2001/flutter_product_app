import 'package:flutter/material.dart';

class Productpage extends StatefulWidget {
  final snap;
  final String price;
  final String description;
  final String title;
  final String rating;

  const Productpage(
      {super.key,
      required this.snap,
      required this.price,
      required this.description,
      required this.rating,
      required this.title});

  @override
  State<Productpage> createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
  int _counter = 1;
  bool isFavorite = false;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      } else {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(225, 255, 255, 255),
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
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          width: double.infinity,
          color: const Color.fromARGB(225, 255, 255, 255),
          child: Stack(
            children: [
              Positioned(
                  // product name
                  left: 25,
                  top: 485,
                  child: SizedBox(
                    width: 350,
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                    ),
                  )),
              Positioned(
                  // price
                  top: 610,
                  left: 125,
                  child: Text(
                    'Rs ${widget.price}',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic),
                  )),
              Positioned(
                  left: 50,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        alignment: Alignment.center,
                        widget.snap,
                        width: 300,
                        height: 360,
                      ),
                    ),
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
                  left: 270,
                  child: Text(
                    'Rating',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  )),
              Positioned(
                  top: 445,
                  left: 220,
                  child: Text(
                    widget.rating,
                    style: const TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )),
              Positioned(
                  top: 680,
                  left: 20,
                  child: SizedBox(
                    width: 352,
                    child: Text(
                      textAlign: TextAlign.center,
                      widget.description,
                      style: const TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  )),
              Positioned(
                  top: 545,
                  left: 230,
                  child: IconButton(
                      onPressed: () {
                        _decrement();
                      },
                      icon: const Icon(
                        Icons.minimize,
                        color: Colors.black,
                      ))),
              Positioned(
                  top: 553,
                  left: 280,
                  child: IconButton(
                      onPressed: () {
                        _increment();
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ))),
              Positioned(
                  top: 566,
                  left: 272,
                  child: Text(
                    '$_counter',
                    style: const TextStyle(
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
                      backgroundColor: Color.fromARGB(255, 16, 3, 37),
                    ),
                  )),
              const Positioned(
                  top: 450,
                  left: 70,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Color.fromARGB(255, 160, 9, 9),
                  )),
              const Positioned(
                  top: 450,
                  left: 85,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Color.fromARGB(255, 5, 156, 25),
                  )),
              Positioned(
                  top: -12,
                  left: 320,
                  child: IconButton(
                    icon: Icon(
                      isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border, // Toggled icon
                      color: isFavorite
                          ? Colors.red
                          : Colors.grey, // Change color based on state
                      size: 36.0, // Icon size
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite; // Toggle state
                      });
                    },
                  )),
              Positioned(
                  //
                  top: 920,
                  left: 190,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          fixedSize: WidgetStatePropertyAll(Size(150, 45)),
                          backgroundColor: WidgetStatePropertyAll(
                              Color.fromARGB(255, 20, 141, 223))),
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
                  top: 924,
                  left: 60,
                  child: Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 20, 141, 223))),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_checkout_outlined,
                          size: 30,
                          color: Colors.black,
                        )),
                  )),
              const Positioned(
                  top: 375,
                  left: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.auto_graph_rounded,
                        color: Color.fromRGBO(0, 223, 7, 0.925),
                      ),
                      Text(
                        ' 402 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            fontSize: 15),
                      ),
                      Text(
                        'people ordered this in the last 30 days',
                        style: TextStyle(
                            color: Colors.black, fontStyle: FontStyle.italic),
                      )
                    ],
                  )),
              Positioned(
                  top: 560,
                  left: 25,
                  child: Container(
                    width: 100,
                    height: 35,
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(17)),
                        color: Color.fromARGB(255, 7, 243, 15)),
                    child: const Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Hot Deal',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )),
              const Positioned(
                  top: 605,
                  left: 6,
                  child: SizedBox(
                    width: 10,
                    child: Icon(
                      Icons.arrow_downward_outlined,
                      color: Color.fromARGB(255, 9, 209, 16),
                      size: 50,
                    ),
                  )),
              const Positioned(
                  top: 610,
                  left: 58,
                  child: Text(
                    '43%',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 7, 221, 14),
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  )),
              Positioned(
                top: 32,
                left: 320,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      size: 28,
                      Icons.share_sharp,
                      color: Color.fromARGB(255, 116, 103, 103),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
