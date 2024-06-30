// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:dave_stores/components/models/laptops.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({required this.laptop, required this.onTap, super.key});

  final Laptops laptop;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      width: 250,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(14.0))),
            elevation: 2,
            child: Image.asset(
              laptop.image,
              height: 175,
              width: 250,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              laptop.description,
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Text(
                        laptop.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      laptop.price,
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFF6C63FF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  addToCart(Laptops laptop) {}
}
