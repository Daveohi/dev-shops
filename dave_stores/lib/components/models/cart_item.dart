// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:dave_stores/components/models/cart.dart';
import 'package:dave_stores/components/models/laptops.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartItem extends StatefulWidget {
  const MyCartItem({required this.laptop, super.key});

  final Laptops laptop;
  @override
  State<MyCartItem> createState() => _MyCartItemState();
}

class _MyCartItemState extends State<MyCartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.laptop);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      margin: EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Image.asset(widget.laptop.image),
        title: Text(widget.laptop.name),
        subtitle: Text(widget.laptop.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
