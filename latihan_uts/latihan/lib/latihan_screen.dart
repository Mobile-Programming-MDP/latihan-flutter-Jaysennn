import 'package:flutter/material.dart';

class LatihanScreen extends StatelessWidget {
  const LatihanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan UTS'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'INFORMATIKA',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Image.asset(
              "images/latihan.png",
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Universitas Multi Data Palembang",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            const Text(
              "Kota Palembang, Prov. Sumatera Selatan",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red[900],
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Baris berisi info
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Kiri
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Status",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Aktif",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Akreditasi",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Unggul",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        // Kanan
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tanggal Berdiri",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "9 April 2021",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Jumlah Mahasiswa",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "5000",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    // Baris berisi kontak
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Telp: Icon + Text
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                '0711-376400',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        // Email: Icon + Text
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'mdp@gmail.com',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        // Website: Icon + Text
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.web,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'mdp.com',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
