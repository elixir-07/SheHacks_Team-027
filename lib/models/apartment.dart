import 'package:flutter/material.dart';

class Apartment {
  final String id;
  final String cityId;
  final String name;
  final double price;
  final String address;
  final double rating;
  final String desc;
  final List<String> features;
  final List<String> personImages;
  final String images;
  final String occupacy;
  final bool is1BHK ;
  final bool is2BHK ;
  final bool is3BHK ;
  final bool isfurnished ;


const Apartment({
  @required this.id,
  @required this.cityId,
  @required this.name,
  @required this.price,
  this.address,
  this.rating,
  this.desc,
  this.features,
  this.personImages,
  this.images,
  this.occupacy,
  this.is1BHK,
  this.is2BHK,
  this.is3BHK,
  this.isfurnished,
  });

}