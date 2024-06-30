// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:dave_stores/components/models/cart.dart';
import 'package:dave_stores/components/models/laptops.dart';
import 'package:dave_stores/components/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyShopPage extends StatefulWidget {
  const MyShopPage({super.key});

  @override
  State<MyShopPage> createState() => _MyShopPageState();
}

class _MyShopPageState extends State<MyShopPage> {
  void addToCart(Laptops laptop) {
    Provider.of<Cart>(context, listen: false).addToCart(laptop);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Added to cart'),
        content: Text('Check your cart to see the product'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Search'),
                Icon(Icons.search, color: Colors.grey),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                children: const <TextSpan>[
                  TextSpan(
                    text:
                        "When you gain God's way of doing \n things and you do likewise, \n",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  TextSpan(
                    text: 'life answers to you',
                    style: TextStyle(
                      color: Color(0xFF6C63FF),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "Hot Deals ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Laptops laptop = value.getLaptopList()[index];
                // Laptops laptop = Laptops(
                //     name: 'HP',
                //     price: '#300,000',
                //     image: 'assets/images/laptop.png',
                //     description: 'Hp ProBook 15');
                return ProductTile(
                  laptop: laptop,
                  onTap: () => addToCart(laptop),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, bottom: 28),
            child: Divider(
              color: Colors.white,
              height: 112,
            ),
          ),
        ],
      ),
    );
  }
}
