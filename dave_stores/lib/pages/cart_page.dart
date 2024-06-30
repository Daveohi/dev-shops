// ignore_for_file: prefer_const_constructors

import 'package:dave_stores/components/models/cart.dart';
import 'package:dave_stores/components/models/cart_item.dart';
import 'package:dave_stores/components/models/laptops.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MyCart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Laptops laptop = value.getUserCart()[index];
                  return MyCartItem(laptop: laptop,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
