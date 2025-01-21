// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

AppBar CustomAppBar({required String title}){
  return AppBar(
    backgroundColor: Colors.purpleAccent,
    centerTitle: true,
    elevation: 5,
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    ),
  );
}