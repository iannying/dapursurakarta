import 'package:flutter/material.dart';
import '../models/resep.dart';
import 'detail_page.dart';
import 'favorit_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index = 0;

  @override
  Widget build(BuildContext context) {

    List halaman = [
      daftarResepPage(),
      FavoritPage()
    ];

    return Scaffold(

      appBar: AppBar(
        title: Text("Resep Masakan"),
      ),

      body: halaman[index],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: index,

        onTap: (i){
          setState(() {
            index = i;
          });
        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorit"
          ),
        ],
      ),
    );
  }

  Widget daftarResepPage(){

    return ListView.builder(
      itemCount: daftarResep.length,

      itemBuilder: (context,index){

        final resep = daftarResep[index];

        return ListTile(

          leading: Icon(Icons.restaurant_menu),

          title: Text(resep.nama),

          trailing: IconButton(

            icon: Icon(
              resep.favorit ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),

            onPressed: (){
              setState(() {
                resep.favorit = !resep.favorit;
              });
            },
          ),

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