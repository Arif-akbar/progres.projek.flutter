import 'package:flutter/material.dart';

class RatingProduk extends StatefulWidget {
  const RatingProduk({super.key});

  @override
  State<RatingProduk> createState() => _RatingProdukState();
}

class _RatingProdukState extends State<RatingProduk> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5,(index) => IconButton(
        onPressed: () => setState(() => _rating = index + 1),
        icon: Icon(
          index < _rating ? Icons.star : Icons.star_border,
          color: index < _rating ? Colors.amber : Colors.grey,
        ),
      )),
    );
  }
}
