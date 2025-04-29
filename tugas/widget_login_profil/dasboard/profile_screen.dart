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
        title: const WidgetText(
          text: 'Profil',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 150,
              height: 160,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/logo_person.png'),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 2),
          WidgetText(text: email, fontSize: 20, color: Colors.grey),
          const SizedBox(height: 20),
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
                        stok: 0,
                        imagePath: 'assets/adidas.png',
                        warna: Colors.red,
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