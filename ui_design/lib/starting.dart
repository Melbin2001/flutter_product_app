import 'package:flutter/material.dart';
import 'package:ui_design/grid.dart';
import 'package:ui_design/home.dart';

class Startingpage extends StatelessWidget {
  const Startingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 247, 248, 238),
        child: Column(
          children: [
            Image.asset(
              'android/assets/images/coverimg.jpg',
              width: double.infinity,
              height: 500,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Clothings, accessories, and shoes that\n are designed to help you express your\n unique personality and individuality',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (ctx1) {
      return Homescreen();
    }));},
              style: const ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(Size(80, 40)),
                  maximumSize: WidgetStatePropertyAll(Size(200, 40)),
                  fixedSize: WidgetStatePropertyAll(Size(175, 45)),
                  backgroundColor: WidgetStatePropertyAll(Colors.pink)),
              child: const Text(
                'List View',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            ElevatedButton(
              onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (ctx1) {
      return Gridview();
    }));},
              style: const ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(Size(80, 40)),
                  maximumSize: WidgetStatePropertyAll(Size(200, 40)),
                  fixedSize: WidgetStatePropertyAll(Size(175, 45)),
                  backgroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(255, 221, 174, 196))),
              child: const Text(
                'Grid View',
                style: TextStyle(
                    color: Color.fromARGB(255, 34, 34, 34),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
    );
  }
}
