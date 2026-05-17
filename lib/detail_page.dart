import 'package:flutter/material.dart';
import 'models/resep.dart';

class DetailPage extends StatelessWidget {

  final Resep resep;

  const DetailPage({
    super.key,
    required this.resep,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xfff5f5f5),

      body: CustomScrollView(

        slivers: [

          // APPBAR GAMBAR
          SliverAppBar(

            expandedHeight: 320,

            pinned: true,

            backgroundColor: Colors.orange,

            flexibleSpace: FlexibleSpaceBar(

              title: Text(
                resep.nama,

                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              background: Stack(
                fit: StackFit.expand,

                children: [

                  Image.asset(
                    resep.gambar,

                    fit: BoxFit.cover,

                    errorBuilder:
                        (context, error, stackTrace) {

                      return Container(
                        color: Colors.orange.shade100,

                        child: const Center(
                          child: Icon(
                            Icons.restaurant,
                            size: 120,
                            color: Colors.orange,
                          ),
                        ),
                      );
                    },
                  ),

                  Container(
                    decoration: BoxDecoration(

                      gradient: LinearGradient(

                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,

                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // CONTENT
          SliverToBoxAdapter(

            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [

                  // INFO CARD
                  Container(

                    padding: const EdgeInsets.all(20),

                    decoration: BoxDecoration(

                      color: Colors.white,

                      borderRadius:
                      BorderRadius.circular(24),

                      boxShadow: [

                        BoxShadow(
                          color:
                          Colors.black.withOpacity(0.08),

                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),

                    child: Row(

                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,

                      children: [

                        premiumInfo(
                          Icons.access_time,
                          resep.waktuMasak,
                          "Waktu",
                        ),

                        premiumInfo(
                          Icons.restaurant_menu,
                          resep.tingkatKesulitan,
                          "Level",
                        ),

                        premiumInfo(
                          Icons.people,
                          resep.porsi,
                          "Porsi",
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 28),

                  // DESKRIPSI PREMIUM
                  Container(

                    width: double.infinity,

                    padding: const EdgeInsets.all(24),

                    decoration: BoxDecoration(

                      gradient: LinearGradient(

                        colors: [
                          Colors.orange.shade50,
                          Colors.white,
                        ],

                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),

                      borderRadius:
                      BorderRadius.circular(28),

                      boxShadow: [

                        BoxShadow(
                          color:
                          Colors.black.withOpacity(0.08),

                          blurRadius: 15,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [

                        Row(
                          children: [

                            Container(

                              padding:
                              const EdgeInsets.all(10),

                              decoration: BoxDecoration(
                                color:
                                Colors.orange.shade100,

                                borderRadius:
                                BorderRadius.circular(
                                    16),
                              ),

                              child: const Icon(
                                Icons.menu_book,
                                color: Colors.orange,
                                size: 28,
                              ),
                            ),

                            const SizedBox(width: 14),

                            const Text(
                              "Deskripsi Resep",

                              style: TextStyle(
                                fontSize: 24,
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 22),

                        Text(
                          resep.deskripsi,

                          textAlign: TextAlign.justify,

                          style: TextStyle(
                            fontSize: 17,
                            height: 1.9,
                            color:
                            Colors.grey.shade800,
                            letterSpacing: 0.3,
                          ),
                        ),

                        const SizedBox(height: 20),

                        Row(
                          children: [

                            Icon(
                              Icons.star,
                              color:
                              Colors.amber.shade700,
                              size: 22,
                            ),

                            const SizedBox(width: 8),

                            Text(
                              "Resep populer dan banyak disukai pengguna",

                              style: TextStyle(
                                color:
                                Colors.grey.shade700,
                                fontWeight:
                                FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 28),

                  // BAHAN
                  premiumSection(
                    "Bahan",
                    resep.bahan,
                  ),

                  const SizedBox(height: 28),

                  // LANGKAH
                  premiumSection(
                    "Langkah Memasak",
                    resep.langkah,
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget premiumInfo(
      IconData icon,
      String value,
      String label,
      ) {

    return Column(
      children: [

        CircleAvatar(
          radius: 26,
          backgroundColor: Colors.orange.shade100,

          child: Icon(
            icon,
            color: Colors.orange,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          value,

          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          label,

          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }

  Widget premiumSection(
      String title,
      String content,
      ) {

    return Container(

      width: double.infinity,

      padding: const EdgeInsets.all(22),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(24),

        boxShadow: [

          BoxShadow(
            color: Colors.black.withOpacity(0.06),

            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [

          Text(
            title,

            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            content,

            style: const TextStyle(
              fontSize: 16,
              height: 1.8,
            ),
          ),
        ],
      ),
    );
  }
}