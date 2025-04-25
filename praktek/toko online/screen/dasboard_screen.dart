import 'package:flutter/material.dart';
import 'package:tokoonline/componen/card_produk.dart';

class DasboardScreen extends StatefulWidget {
  const DasboardScreen({super.key});

  @override
  State<DasboardScreen> createState() => _DasboardScreenState();
}

class _DasboardScreenState extends State<DasboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent,
        title: const Text("Dashboard",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      ),
      ),
      body: ListView(
        children: [
          CardProduk(namaProduk: "SSD NVME SAMSUNG", harga: 1000000, stok: 101, imagePath: 'assets/ssd.png'),
          CardProduk(namaProduk: "SSD SATA ADATA", harga: 600000, stok: 44, imagePath: 'assets/adata.png'),
          CardProduk(namaProduk: "SSD SATA SAMSUNG", harga: 700000, stok: 69, imagePath: 'assets/sata samsung.png'),
          CardProduk(namaProduk: "THERMAL PASTE", harga: 60000, stok: 780, imagePath: 'assets/paste.png'),
          CardProduk(namaProduk: "SSD KINGSTON", harga: 800000, stok: 0, imagePath: 'assets/kingston.png', warna: Colors.red)
        ],
      ),
    );
  }
}
