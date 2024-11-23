import 'package:flutter/material.dart';
import 'detail_produk.dart';
import 'profil.dart'; // Tambahkan import untuk halaman Profil

class DashboardScreen extends StatelessWidget {
  // Daftar produk
  final List<Map<String, dynamic>> produkList = [
    {
      'nama': 'pajero',
      'harga': 500000,
      'gambar': 'assets/images/pajero.jpeg', // Gambar lokal
    },
    {
      'nama': 'innova',
      'harga': 400000,
      'gambar': 'assets/images/innova.jpeg', // Gambar lokal
    },
    {
      'nama': 'jazz',
      'harga': 300000,
      'gambar': 'assets/images/jazz.jpeg', // Gambar lokal
    },
    {
      'nama': 'brio',
      'harga': 300000,
      'gambar': 'assets/images/brio.jpeg', // Gambar lokal
    },
    {
      'nama': 'phanter',
      'harga': 200000,
      'gambar': 'assets/images/panther.jpeg', // Gambar lokal
    },
    {
      'nama': 'avanza',
      'harga': 350000,
      'gambar': 'assets/images/avanza.jpeg', // Gambar lokal
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2D2B57),
        title: Row(
          children: [
            Icon(Icons.car_crash, color: Colors.purpleAccent),
            SizedBox(width: 8),
            Text(
              'iSEMO',
              style: TextStyle(color: Colors.purpleAccent),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Aksi untuk ikon pesan
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Aksi untuk ikon keranjang
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigasi ke halaman Profil
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Field Pencarian
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
                hintText: 'Apa yang dibutuhkan?',
                hintStyle: TextStyle(color: Colors.white70),
                prefixIcon: Icon(Icons.search, color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 16),

            // List Produk Jasa
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: produkList.length, // Jumlah produk berdasarkan data
                itemBuilder: (context, index) {
                  final produk = produkList[index]; // Ambil data produk berdasarkan index
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailProdukPage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Gambar produk
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[300],
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                produk['gambar'], // Gambar berdasarkan data
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            produk['nama'], // Nama produk
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Rp. ${produk['harga']}', // Harga produk
                            style: TextStyle(color: Colors.purpleAccent),
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
      ),
      backgroundColor: Color(0xFF2D2B57),
    );
  }
}