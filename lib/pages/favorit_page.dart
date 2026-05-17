import 'package:flutter/material.dart';
import '../models/resep.dart';
import 'detail_page.dart';

class FavoritPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List favorit = daftarResep.where((r) => r.favorit).toList();

    return ListView.builder(

      itemCount: favorit.length,

      itemBuilder: (context,index){

        final resep = favorit[index];

        return ListTile(

          leading: Icon(Icons.restaurant),

          title: Text(resep.nama),

          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=>DetailPage(resep: resep)
                )
            );
          },
        );
      },
    );
  }
}