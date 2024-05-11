// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/checkout.dart';
import 'package:flutter_ecommerce_app/pages/detail.dart';
import 'package:flutter_ecommerce_app/provider/cart.dart';
import 'package:flutter_ecommerce_app/shared/appbar.dart';
import 'package:provider/provider.dart';




class Item {
  String imgPath;
  double price;
  String location;
  String name;
  Item(
      {required this.imgPath,
      required this.name,
      required this.price,
      this.location = "Main branch"});
}


class Home extends StatelessWidget {
  final List<Item> items = [
    Item(imgPath: "assets/img/picture1.jpg",name: "Product1",price: 12,),
    Item(imgPath: "assets/img/picture2.jpg", name: "Product2", price: 10.99),
    Item(imgPath: "assets/img/picture3.jpg",name: "Product3",price: 15.33,location: "Hoda shop"),
    Item(imgPath: "assets/img/pic1.jpg", name: "Product4", price: 6),
    Item(imgPath: "assets/img/pic4.jpg",  name: "Product5",price: 19,  location: "Sera shop"),
    Item(imgPath: "assets/img/pic6.jpg", name: "Product6", price: 7.99),
    Item(imgPath: "assets/img/pic7.jpg", name: "Product7",  price: 19,  location: "Ali shop"),
    Item(imgPath: "assets/img/pic8.jpg", name: "Product1", price: 7.99),
  ];

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        
        body: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Stack(
                    children: [
                      Positioned(
                          top: -3,
                          bottom: -9,
                          right: 0,
                          left: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Details(product: items[index]),
                                ),
                              );
                            },
                            child: GridTile(
                              footer: GridTileBar(
                                trailing: IconButton(
                                  color: const Color.fromARGB(255, 62, 94, 70),
                                  onPressed: () {
                                    cartt.add(items[index]);
                                  },
                                  icon: Icon(Icons.add),
                                ),
                                leading: Text("\$ 12.76"),
                                title: Text(""),
                              ),
                              child: Image.asset(items[index].imgPath),
                            ),
                          )),
                    ],
                  ),
                );
              }),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/grnd.jpg"),
                          fit: BoxFit.cover)),
                  currentAccountPicture: CircleAvatar(
                    radius: 199,
                    backgroundImage: AssetImage("assets/img/download.jpeg"),
                  ),
                  accountName: Text(
                    "Nada Sameh",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "Nada@gmail.com",
                    style: TextStyle(color: Colors.black),
                  )),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Home(),
                                ),
                              );},
              ),
              ListTile(
                title: Text("My Products"),
                leading: Icon(Icons.add_shopping_cart),
                onTap: () {Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CheckOut(),
                                ),
                              );},
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.help_center),
                onTap: () {},
              ),
              ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.exit_to_app),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(  iconTheme: const IconThemeData(color: Colors.white),
          actions: [Productss()],
          backgroundColor: const Color.fromARGB(255, 76, 141, 95),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
