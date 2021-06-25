import 'package:flutter/material.dart';


class CartModel {
  final String name;//name
  final String image;//image
  final double price;//price
  final int quentity;//quentity
  final String color;//color
  final String size;//size
  CartModel({
    @required this.price,
    @required this.name,
    @required this.image,
    @required this.size,
    @required this.color,
    @required this.quentity,
  });
}
