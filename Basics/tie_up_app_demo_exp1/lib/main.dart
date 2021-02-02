// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Tie Up'),
          ),
          backgroundColor: Colors.green[800],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://assets.materialup.com/uploads/a1fdf41e-04ab-42a2-ab43-1b559be9743b/preview.jpg'),
          ),
        ),
      ),
    ),
  );
}
