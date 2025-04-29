import 'package:flutter/material.dart';
import 'package:login_profil_widget/componen/button.dart';
import 'package:login_profil_widget/componen/rating_produk.dart';

class CardProduk extends StatelessWidget {
  const CardProduk({
    super.key,
    required this.namaProduk,
    required this.harga,
    required this.imagePath,
    this.stok,
    this.warna,
  });

  final String namaProduk;
  final double harga;
  final int? stok;
  final Color? warna;
  final dynamic imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: warna ?? const Color.fromARGB(255, 255, 255, 255),
        height: 300,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            children: [
              CircleAvatar(radius: 45, backgroundImage: AssetImage(imagePath)),
              const SizedBox(height: 10),
              Text(
                "$namaProduk",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "Harga : $harga",
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "Stok : ${stok ?? 0}",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              RatingProduk(), // Jika ada widget RatingProduk
              WidgetButton(
                label: "Beli",
                onPressed: () {
                  // Aksi kalau tombol "Beli" ditekan
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Berhasil membeli $namaProduk")),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}