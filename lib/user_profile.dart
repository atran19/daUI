import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Looking 4 Love'),
      backgroundColor: Colors.black87,
    ),
    body: Container(
      height: 250,
      width: 500,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.network('https://picsum.photos/200/300/?random'),

      ),

    ),

  );
}