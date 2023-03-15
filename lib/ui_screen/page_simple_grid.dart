import 'package:flutter/material.dart';

class PageSimpleGrid extends StatefulWidget {
  const PageSimpleGrid({super.key});

  @override
  State<PageSimpleGrid> createState() => _PageSimpleGridState();
}

class _PageSimpleGridState extends State<PageSimpleGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Gridview'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(16, (index) {
          // array index mulai dari 0
          // Ganti index mulai dari 1
          int nIndex = index + 1;
          String nDataIndex = "$nIndex";

          return Center(
            child: Container(
              color: Colors.deepOrange,
              height: 100,
              width: 100,
              child: Center(child: Text('Data ke : ${nDataIndex}')),
            ),
          );
        }),
      ),
    );
  }
}
