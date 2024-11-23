import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
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
              // Tambahkan aksi jika diperlukan
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Tambahkan aksi jika diperlukan
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Tambahkan aksi jika diperlukan
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Bagian Header Profil
          Container(
            color: Color(0xFF2D2B57),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpeg'), // Gambar profil
                ),
                SizedBox(height: 10),
                Text(
                  'M.A.Mukminin', // Nama pengguna
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Daftar Menu
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                buildMenuItem(Icons.location_on, 'Alamat', 'Atur alamat Anda'),
                buildMenuItem(Icons.account_balance, 'Rekening Bank', 'Daftar rekening bank'),
                buildMenuItem(Icons.payment, 'Pembayaran Instan', 'E-Wallet, Kartu Kredit'),
                buildMenuItem(Icons.security, 'Keamanan Akun', 'Kata sandi, PIN & verifikasi data diri'),
                buildMenuItem(Icons.notifications, 'Notifikasi', 'Atur notifikasi aplikasi'),
                buildMenuItem(Icons.privacy_tip, 'Privasi Akun', 'Atur penggunaan data pribadi'),
                buildMenuItem(Icons.logout, 'Log Out', 'Keluar dari akun Anda'),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget buildMenuItem(IconData icon, String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurple),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}