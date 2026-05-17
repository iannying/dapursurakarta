import 'package:flutter/material.dart';
import 'models/resep.dart';
import 'detail_page.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {

  TextEditingController searchController =
  TextEditingController();

  List<Resep> filteredResep = daftarResep;

  void searchResep(String query) {

    final hasil = daftarResep.where((resep) {

      final nama = resep.nama.toLowerCase();

      final input = query.toLowerCase();

      return nama.contains(input);

    }).toList();

    setState(() {

      filteredResep = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,

        title: const Text(
          "Dapur Surakarta",

          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
      ),

      body: Column(
        children: [

          // SEARCH BAR
          Container(
            color: Colors.orange,
            padding: const EdgeInsets.all(16),

            child: TextField(
              controller: searchController,

              onChanged: searchResep,

              decoration: InputDecoration(

                hintText: "Cari resep makanan...",

                prefixIcon: const Icon(Icons.search),

                filled: true,
                fillColor: Colors.white,

                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(20),

                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // LIST RESEP
          Expanded(
            child: ListView.builder(

              padding: const EdgeInsets.all(16),

              itemCount: filteredResep.length,

              itemBuilder: (context, index) {

                final resep = filteredResep[index];

                return GestureDetector(

                  onTap: () {

                    Navigator.push(
                      context,

                      MaterialPageRoute(
                        builder: (context) =>
                            DetailPage(
                              resep: resep,
                            ),
                      ),
                    );
                  },

                  child: Container(

                    margin:
                    const EdgeInsets.only(bottom: 24),

                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius:
                      BorderRadius.circular(28),

                      boxShadow: [

                        BoxShadow(
                          color:
                          Colors.black.withOpacity(0.1),

                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [

                        // FOTO
                        ClipRRect(

                          borderRadius:
                          const BorderRadius.only(
                            topLeft:
                            Radius.circular(28),

                            topRight:
                            Radius.circular(28),
                          ),

                          child: Image.asset(
                            resep.gambar,

                            height: 220,
                            width: double.infinity,

                            fit: BoxFit.cover,

                            // JIKA GAMBAR ERROR
                            errorBuilder:
                                (context, error, stackTrace) {

                              return Container(
                                height: 220,
                                width: double.infinity,
                                color: Colors.orange.shade100,

                                child: const Icon(
                                  Icons.restaurant,
                                  size: 80,
                                  color: Colors.orange,
                                ),
                              );
                            },
                          ),
                        ),

                        Padding(
                          padding:
                          const EdgeInsets.all(18),

                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,

                            children: [

                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,

                                children: [

                                  Expanded(
                                    child: Text(
                                      resep.nama,

                                      style:
                                      const TextStyle(
                                        fontSize: 24,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                  IconButton(

                                    onPressed: () {

                                      setState(() {

                                        resep.favorit =
                                        !resep.favorit;
                                      });
                                    },

                                    icon: Icon(

                                      resep.favorit
                                          ? Icons.favorite
                                          : Icons
                                          .favorite_border,

                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              Text(
                                resep.deskripsi,

                                style: TextStyle(
                                  fontSize: 15,
                                  color:
                                  Colors.grey.shade700,
                                ),
                              ),

                              const SizedBox(height: 18),

                              Row(
                                children: [

                                  Container(
                                    padding:
                                    const EdgeInsets
                                        .symmetric(
                                      horizontal: 14,
                                      vertical: 8,
                                    ),

                                    decoration:
                                    BoxDecoration(
                                      color:
                                      Colors.orange
                                          .shade100,

                                      borderRadius:
                                      BorderRadius
                                          .circular(20),
                                    ),

                                    child: Row(
                                      children: [

                                        const Icon(
                                          Icons.access_time,
                                          size: 18,
                                          color:
                                          Colors.orange,
                                        ),

                                        const SizedBox(
                                            width: 6),

                                        Text(
                                          resep.waktuMasak,
                                        ),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(width: 12),

                                  Container(
                                    padding:
                                    const EdgeInsets
                                        .symmetric(
                                      horizontal: 14,
                                      vertical: 8,
                                    ),

                                    decoration:
                                    BoxDecoration(
                                      color:
                                      Colors.orange
                                          .shade100,

                                      borderRadius:
                                      BorderRadius
                                          .circular(20),
                                    ),

                                    child: Text(
                                      resep
                                          .tingkatKesulitan,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}