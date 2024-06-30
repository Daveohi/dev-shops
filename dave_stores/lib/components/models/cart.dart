import 'package:dave_stores/components/models/laptops.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';

class Cart extends ChangeNotifier {
  List<Laptops> laptops = [
    
    Laptops(
      name: 'HP Laptop',
      price: '₦485,000',
      image: 'assets/images/laptop.png',
      description: 'Hp ProBook 15, Core i3, 8gb ram, 512gb hdd, Touchscreen',
    ),
    Laptops(
      name: 'Omen Laptop',
      price: '₦1,520,000',
      image: 'assets/images/omen.webp',
      description: 'Hp Omen 15, Core i7, 16gb ram, 512gb hdd',
    ),
    Laptops(
      name: 'DELL Laptop',
      price: '₦550,000',
      image: 'assets/images/dell.webp',
      description: 'Dell 15, Core i5, 12gb ram, 500gb ssd',
    ),
    Laptops(
      name: 'Alienware Laptop',
      price: '₦1,800,000',
      image: 'assets/images/alienware.jpg',
      description: 'Alienware , Core i7, 32gb ram, 1Tb ssd',
    ),
    Laptops(
      name: 'Apple Laptop',
      price: '₦750,000',
      image: 'assets/images/apple.webp',
      description: 'Apple M1, Core i7, 16gb ram, 256gb ssd',
    ),
    Laptops(
      name: 'Microsoft Laptop',
      price: '₦450,000',
      image: 'assets/images/microsoft.png',
      description: 'Microsoft Surface Pro 15, Core i7, 16gb ram, 256gb ssd',
    ),
    Laptops(
      name: 'Samsung Laptop',
      price: '₦960,000',
      image: 'assets/images/samsung.webp',
      description: 'Samsung, Core i7, 16gb ram, 512gb ssd, Touchscreen',
    ),
  ];

// List of items in cart
  List<Laptops> userCart = [];

// get list of items for sale
  List<Laptops> getLaptopList() {
    return laptops;
  }

// Get cart

  List<Laptops> getUserCart() {
    return userCart;
  }

// Add item to cart

  void addToCart(Laptops laptop) {
    userCart.add(laptop);
    notifyListeners();
  }

// Remove item from cart

  void removeItemFromCart(Laptops laptop) {
    userCart.remove(laptop);
    notifyListeners();
  }

// Clear cart

  void clearCart() {
    userCart.clear();
  }
}
