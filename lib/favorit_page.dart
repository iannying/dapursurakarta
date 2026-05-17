import 'package:flutter/material.dart';
import 'models/resep.dart';
import 'detail_page.dart';

class FavoritPage extends StatefulWidget {
  const FavoritPage({super.key});

  @override
  State<FavoritPage> createState() => _FavoritPageState();
}

class _FavoritPageState extends State<FavoritPage> {

  @override
  Widget build(BuildContext context) {

    final favorit =
    daftarResep.where((resep) => resep.favorit).toList();

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Resep Favorit"),
        centerTitle: true,
      ),

      body: favorit.isEmpty

      // JIKA BELUM ADA FAVORIT
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: const [

            Icon(
              Icons.favorite_border,
              size: 100,
              color: Colors.grey,
            ),

            SizedBox(height: 20),

            Text(
              "Belum Ada Resep Favorit",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Tambahkan resep favoritmu ❤️",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      )

      // JIKA ADA FAVORIT
          : ListView.builder(

        padding: const EdgeInsets.all(12),

        itemCount: favorit.length,

        itemBuilder: (context, index) {

          final resep = favorit[index];

          return GestureDetector(

            onTap: () {

              Navigator.push(
                context,

                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    resep: resep,
                  ),
                ),
              );
            },

            child: Container(

              margin: const EdgeInsets.only(bottom: 16),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),

                gradient: LinearGradient(
                  colors: [
                    Colors.orange.shade300,
                    Colors.deepOrange.shade400,
                  ],
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 10,
                    offset: const Offset(0, 6),
                  )
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Row(
                  children: [

                    // ICON MAKANAN
                    Container(
                      height: 70,
                      width: 70,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),

                      child: const Icon(
                        Icons.restaurant,
                        size: 40,
                        color: Colors.orange,
                      ),
                    ),

                    const SizedBox(width: 16),

                    // INFO RESEP
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: [

                          Text(
                            resep.nama,

                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Text(
                            resep.deskripsi,

                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,

                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),

                          const SizedBox(height: 12),

                          Row(
                            children: [

                              const Icon(
                                Icons.access_time,
                                color: Colors.white,
                                size: 18,
                              ),

                              const SizedBox(width: 4),

                              Text(
                                resep.waktuMasak,

                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),

                              const SizedBox(width: 16),

                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 18,
                              ),

                              const SizedBox(width: 4),

                              Text(
                                resep.tingkatKesulitan,

                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // LOVE ICON
                    IconButton(

                      onPressed: () {

                        setState(() {

                          resep.favorit = false;
                        });
                      },

                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}