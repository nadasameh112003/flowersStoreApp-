// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/provider/cart.dart';
import 'package:flutter_ecommerce_app/shared/appbar.dart';
import 'package:provider/provider.dart';


class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(  iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 76, 141, 95),
          title: Text(
            "Check Out",
            style: TextStyle(color: Colors.white),
          ),
          actions: [Productss()],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: 500,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: cartt.selectedProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          subtitle: Text(
                              "${cartt.selectedProducts[index].price} - ${cartt.selectedProducts[index].location}"),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                cartt.selectedProducts[index].imgPath),
                          ),
                          title: Text(cartt.selectedProducts[index].name),
                          trailing: IconButton(
                              onPressed: () {
                                cartt.delete(cartt.selectedProducts[index]);
                              },
                              icon: Icon(Icons.remove)),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 73, 179, 105)),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
              ),
              child: Text(
                "Pay \$${cartt.price}",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
