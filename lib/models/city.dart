import 'package:flutter/material.dart';

class City {
  final String id;
  final String title;
  final String imageUrl;

  const City({
    @required this.id,
    @required this.title,
    this.imageUrl,
  });
}