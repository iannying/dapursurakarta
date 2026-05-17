import 'package:flutter/material.dart';
import '../models/resep.dart';

class DetailPage extends StatelessWidget {

  final Resep resep;

  DetailPage({required this.resep});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(resep.nama),
      ),

      body: Padding(

        padding: EdgeInsets.all(16),

        child: ListView(

          children: [

            Icon(Icons.fastfood,size:120),

            SizedBox(height:20),

            Text(
              "Bahan",
              style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),
            ),

            SizedBox(height:10),

            Text(resep.bahan),

            SizedBox(height:20),

            Text(
              "Langkah Memasak",
              style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),
            ),

            SizedBox(height:10),

            Text(resep.langkah),

          ],
        ),
      ),
    );
  }
}