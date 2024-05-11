
// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/checkout.dart';
import 'package:flutter_ecommerce_app/provider/cart.dart';
import 'package:provider/provider.dart';
class Productss extends StatelessWidget {
  const Productss({super.key});

  @override
  Widget build(BuildContext context) {final cartt = Provider.of<Cart>(context);
    return 
      Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        bottom: 20,
                        child: Container(
                          child: Text(
                            "${cartt.selectedProducts.length}",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(211, 164, 255, 193)),
                        ),
                      ),
                      IconButton(
                        onPressed: () {  Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CheckOut(),
                                ),
                              );},
                        icon: Icon(Icons.add_shopping_cart),
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Text(
                      "\$  ${cartt.price}",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ],
              
      
    );
  }
}
