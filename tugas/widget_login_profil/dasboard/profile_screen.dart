import 'package:flutter/material.dart';
import 'package:login_profil_widget/componen/card_produk.dart';
import 'package:login_profil_widget/componen/text.dart';

class ProfileScreen extends StatelessWidget {
  final String email;

  const ProfileScreen({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const WidgetText(
          text: 'Profil',
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 18),
          Center(
            child: Container(
              width: 180,
              height: 160,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 250,
                    backgroundColor: Colors.blueAccent,
                    child: Icon(Icons.person, size: 145, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          WidgetText(
            text: email,
            fontSize: 20,
            color: const Color.fromARGB(255, 113, 112, 112),
          ),
          const SizedBox(height: 14),
          Expanded(
            //memastikan setiap card produk mengambil ruang yang tersedia.
            child: ListView(
              children: [
                Row(
                  //Row digunakan untuk menampilkan dua produk dalam satu baris.
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CardProduk(
                        namaProduk: "LACOSTE",
                        harga: 3000000,
                        stok: 101,
                        imagePath: 'assets/lacoste.png',
                      ),
                    ),
                    Expanded(
                      child: CardProduk(
                        namaProduk: "THE NORTH FACE",
                        harga: 5000000,
                        stok: 19,
                        imagePath: 'assets/tnf.png',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CardProduk(
                        namaProduk: "ELLESSE",
                        harga: 2400000,
                        stok: 68,
                        imagePath: 'assets/ellesse.png',
                      ),
                    ),
                    Expanded(
                      child: CardProduk(
                        namaProduk: "ADIDAS",
                        harga: 2000000,
                        stok: 10,
                        imagePath: 'assets/adidas.png',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CardProduk(
                        namaProduk: "PATAGONIA",
                        harga: 1900000,
                        stok: 44,
                        imagePath: 'assets/patagonia.png',
                      ),
                    ),
                    Expanded(
                      child: CardProduk(
                        namaProduk: "KAPPA",
                        harga: 3200000,
                        stok: 99,
                        imagePath: 'assets/kappa.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
