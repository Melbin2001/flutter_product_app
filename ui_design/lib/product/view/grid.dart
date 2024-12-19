import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/drawer/account_page.dart';
import 'package:ui_design/login/login.dart';
import 'package:ui_design/product/service/product_service.dart';
import 'package:ui_design/productpage.dart';

class Gridview extends StatelessWidget {
  Gridview({super.key});
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(255, 250, 247, 248),
        title: const Text(
          '      Mixed Store',
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
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 20, 141, 223),
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
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: IconButton(
                onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (ctx1) {
                  return const AccountPage();
                }));},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {
                    _logout(context);
                  },
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.black,
                  )),
              title: const Text(
                'Logout',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        future: fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color.fromARGB(255, 252, 249, 250),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 350, crossAxisCount: 2),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Productpage(
                                  title: snapshot.data![index].title,
                                  snap: snapshot.data![index].image,
                         description:
                                      snapshot.data![index].description,
                                  price: snapshot.data![index].price.toString(),
                                  rating:
                                      snapshot.data![index].rating.toString(),
                                )),
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
                              color: Colors.white,
                            ),
                            height: 170,
                            width: 220,
                            child: Image.network(snapshot.data![index].image),
                          ),
                          SizedBox(
                            height: 80,
                            child: Text(
                              snapshot.data![index].title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 68, 66, 66),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                          Text(
                            '  Rs ${snapshot.data![index].price}',
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
            );
          } else {
            return const Center(child: Text('No users found'));
          }
        },
      ),
    );
  }

  Future<void> _logout(ctx1) async {
    try {
      await _auth.signOut();
      Navigator.of(ctx1).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx) {
        return const Login_page();
      }), (Route) => false);
    } catch (e) {
      print("Error signing out: $e");
    }
  }
}
