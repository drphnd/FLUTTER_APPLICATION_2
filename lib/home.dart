import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Variabel 'isPressed' sudah tidak diperlukan lagi untuk menu ini
  // var isPressed = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text(
          "Hotel Booking App", // Judul diganti
        ),
        centerTitle: true,
        leading: Icon(
          Icons.hotel, // Icon diganti
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.search
            )
          ),
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.person_outline
            )
          )
          // Ikon lainnya dihapus agar lebih bersih
        ],
      ),
      
      // Ganti body dengan layout menu hotel
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.red.shade200,
                  Colors.purple.shade200
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
            ),
          ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Text(
                  "Selamat Datang di Hotel Kami",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [Shadow(blurRadius: 2.0, color: Colors.black45)],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Pesan kamar impian Anda hari ini.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 30),

                // TOMBOL UTAMA "BOOK NOW"
                // Sesuai alur video [00:00:23]
                ElevatedButton(
                  onPressed: () {
                    // Pergi ke halaman booking (Form) [00:00:45]
                    Navigator.pushNamed(context, '/booking');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                  ),
                  child: Text("Book Now"),
                ),
                SizedBox(height: 40),

                // Bagian "Menu"
                Text(
                  "Fasilitas Kami",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 10),
                
                // (Ini adalah widget helper di bawah)
                _buildFacilityCard(
                  icon: Icons.king_bed,
                  title: "Kamar Deluxe",
                  subtitle: "Kenyamanan mewah dengan pemandangan kota."
                ),
                _buildFacilityCard(
                  icon: Icons.restaurant_menu,
                  title: "Restoran 24 Jam",
                  subtitle: "Sajian kuliner lokal dan internasional."
                ),
                _buildFacilityCard(
                  icon: Icons.pool,
                  title: "Kolam Renang",
                  subtitle: "Bersantai di kolam renang indoor kami."
                ),
                _buildFacilityCard(
                  icon: Icons.wifi,
                  title: "Free WiFi",
                  subtitle: "Tetap terhubung di seluruh area hotel."
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget helper untuk membuat kartu menu agar rapi
  Widget _buildFacilityCard({required IconData icon, required String title, required String subtitle}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white.withOpacity(0.9), // Sedikit transparan
      child: ListTile(
        leading: Icon(icon, size: 40, color: Colors.blue.shade700),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios, size: 14),
        onTap: () {
          // Anda bisa buat halaman detail untuk setiap fasilitas nanti
        },
      ),
    );
  }
}