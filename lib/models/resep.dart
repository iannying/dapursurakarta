class Resep {

  String nama;
  String bahan;
  String langkah;
  String deskripsi;
  String waktuMasak;
  String tingkatKesulitan;
  String porsi;
  String gambar;
  bool favorit;

  Resep({
    required this.nama,
    required this.bahan,
    required this.langkah,
    required this.deskripsi,
    required this.waktuMasak,
    required this.tingkatKesulitan,
    required this.porsi,
    required this.gambar,
    this.favorit = false,
  });
}

List<Resep> daftarResep = [

  Resep(
    nama: 'Nasi Goreng',

    deskripsi:
    'Nasi goreng merupakan simbol sederhana dari kehangatan masakan Indonesia. Perpaduan nasi, rempah, dan kecap menciptakan cita rasa gurih yang akrab di lidah serta cocok dinikmati dalam berbagai suasana.',

    bahan:
    '• Nasi\n'
        '• Telur\n'
        '• Bawang putih\n'
        '• Kecap manis\n'
        '• Garam',

    langkah:
    '1. Panaskan minyak\n'
        '2. Tumis bawang putih\n'
        '3. Masukkan telur\n'
        '4. Tambahkan nasi\n'
        '5. Tuang kecap lalu aduk rata',

    waktuMasak: '20 Menit',
    tingkatKesulitan: 'Mudah',
    porsi: '2 Porsi',

    gambar: 'assets/images/nasigoreng.jpg',
  ),

  Resep(
    nama: 'Ayam Goreng',

    deskripsi:
    'Ayam goreng menghadirkan rasa gurih khas rempah Nusantara dengan tekstur renyah di luar dan lembut di dalam. Hidangan ini menjadi pilihan favorit untuk menemani momen makan bersama keluarga.',

    bahan:
    '• Ayam\n'
        '• Bawang putih\n'
        '• Ketumbar\n'
        '• Garam\n'
        '• Minyak',

    langkah:
    '1. Haluskan bumbu\n'
        '2. Lumuri ayam\n'
        '3. Diamkan 15 menit\n'
        '4. Goreng hingga matang',

    waktuMasak: '35 Menit',
    tingkatKesulitan: 'Sedang',
    porsi: '4 Porsi',

    gambar: 'assets/images/ayamgoreng.jpg',
  ),

  Resep(
    nama: 'Rendang',

    deskripsi:
    'Rendang melambangkan kekayaan rempah Indonesia dengan proses memasak yang penuh kesabaran. Rasa gurih, pedas, dan aroma khasnya menjadikan rendang sebagai hidangan istimewa yang mendunia.',

    bahan:
    '• Daging sapi\n'
        '• Santan\n'
        '• Cabai\n'
        '• Lengkuas\n'
        '• Serai',

    langkah:
    '1. Tumis bumbu\n'
        '2. Masukkan santan\n'
        '3. Tambahkan daging\n'
        '4. Masak hingga kuah mengering',

    waktuMasak: '2 Jam',
    tingkatKesulitan: 'Sulit',
    porsi: '6 Porsi',

    gambar: 'assets/images/rendang.jpg',
  ),

  Resep(
    nama: 'Bakso',

    deskripsi:
    'Bakso adalah makanan berkuah yang identik dengan rasa hangat dan kenyamanan. Tekstur daging yang kenyal berpadu dengan kuah gurih menciptakan hidangan sederhana yang selalu dirindukan.',

    bahan:
    '• Bakso\n'
        '• Mie\n'
        '• Daun bawang\n'
        '• Bawang goreng',

    langkah:
    '1. Rebus air\n'
        '2. Masukkan bakso\n'
        '3. Tambahkan mie\n'
        '4. Sajikan dengan bawang goreng',

    waktuMasak: '25 Menit',
    tingkatKesulitan: 'Mudah',
    porsi: '3 Porsi',

    gambar: 'assets/images/bakso.jpg',
  ),

  Resep(
    nama: 'Mie Goreng',

    deskripsi:
    'Mie goreng menawarkan perpaduan rasa manis dan gurih yang sederhana namun memikat. Hidangan praktis ini cocok dinikmati kapan saja sebagai makanan favorit berbagai kalangan.',

    bahan:
    '• Mie\n'
        '• Sayuran\n'
        '• Kecap\n'
        '• Telur',

    langkah:
    '1. Rebus mie\n'
        '2. Tumis bumbu\n'
        '3. Masukkan mie\n'
        '4. Tambahkan kecap',

    waktuMasak: '15 Menit',
    tingkatKesulitan: 'Mudah',
    porsi: '2 Porsi',

    gambar: 'assets/images/miegoreng.jpg',
  ),

  Resep(
    nama: 'Soto Ayam',

    deskripsi:
    'Soto ayam menghadirkan kuah hangat dengan aroma rempah yang menenangkan. Perpaduan ayam dan bumbu tradisional memberikan cita rasa khas yang segar dan lezat.',

    bahan:
    '• Ayam\n'
        '• Serai\n'
        '• Kunyit\n'
        '• Bawang merah',

    langkah:
    '1. Rebus ayam\n'
        '2. Tumis bumbu\n'
        '3. Campurkan ke kuah\n'
        '4. Sajikan hangat',

    waktuMasak: '45 Menit',
    tingkatKesulitan: 'Sedang',
    porsi: '4 Porsi',

    gambar: 'assets/images/sotoayam.jpg',
  ),

  Resep(
    nama: 'Capcay',

    deskripsi:
    'Capcay merupakan perpaduan aneka sayuran segar yang menghadirkan rasa gurih sekaligus menyehatkan. Hidangan ini mencerminkan keseimbangan antara kelezatan dan nutrisi.',

    bahan:
    '• Wortel\n'
        '• Kol\n'
        '• Bakso\n'
        '• Saus tiram',

    langkah:
    '1. Tumis bawang\n'
        '2. Masukkan sayuran\n'
        '3. Tambahkan saus\n'
        '4. Masak hingga matang',

    waktuMasak: '20 Menit',
    tingkatKesulitan: 'Mudah',
    porsi: '3 Porsi',

    gambar: 'assets/images/capcay.jpg',
  ),

  Resep(
    nama: 'Pempek',

    deskripsi:
    'Pempek khas Palembang memiliki tekstur kenyal dengan cita rasa unik dari perpaduan ikan dan kuah cuko. Rasa gurih, asam, dan pedasnya menciptakan pengalaman makan yang khas.',

    bahan:
    '• Ikan\n'
        '• Tepung sagu\n'
        '• Telur\n'
        '• Cuko',

    langkah:
    '1. Campur bahan\n'
        '2. Bentuk adonan\n'
        '3. Rebus lalu goreng\n'
        '4. Sajikan dengan cuko',

    waktuMasak: '1 Jam',
    tingkatKesulitan: 'Sedang',
    porsi: '5 Porsi',

    gambar: 'assets/images/pempek.jpg',
  ),

  Resep(
    nama: 'Sate Ayam',

    deskripsi:
    'Sate ayam menghadirkan aroma bakaran yang khas dengan daging empuk dan bumbu kacang gurih. Hidangan ini menjadi salah satu kuliner Nusantara yang penuh cita rasa.',

    bahan:
    '• Daging ayam\n'
        '• Kecap\n'
        '• Bumbu kacang',

    langkah:
    '1. Tusuk ayam\n'
        '2. Bakar sate\n'
        '3. Oles kecap\n'
        '4. Sajikan dengan saus kacang',

    waktuMasak: '40 Menit',
    tingkatKesulitan: 'Sedang',
    porsi: '4 Porsi',

    gambar: 'assets/images/sateayam.jpg',
  ),

  Resep(
    nama: 'Gado-Gado',

    deskripsi:
    'Gado-gado merupakan perpaduan sayuran segar dengan saus kacang yang gurih dan creamy. Hidangan ini mencerminkan kesederhanaan makanan sehat khas Indonesia yang kaya rasa.',

    bahan:
    '• Sayuran\n'
        '• Tahu\n'
        '• Tempe\n'
        '• Bumbu kacang',

    langkah:
    '1. Rebus sayuran\n'
        '2. Siapkan bumbu kacang\n'
        '3. Campurkan semua bahan\n'
        '4. Sajikan',

    waktuMasak: '25 Menit',
    tingkatKesulitan: 'Mudah',
    porsi: '3 Porsi',

    gambar: 'assets/images/gadogado.jpg',
  ),

];