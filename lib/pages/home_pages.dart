import 'package:flutter/material.dart';
import '/models/produk.dart';
import '/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Product> products = [
    Product(
      name: "Dimsum Ayam",
      description: "Lagi cari camilan enak yang bikin nagih? Cobain deh dimsum ayam kita! Isian daging ayamnya full dan padat, rasanya gurih manis, dan dijamin bikin lidah goyang. Cocok buat teman nonton, ngerjain tugas, atau sekadar me-time!.",
      price: 25000,
      imageAsset: "assets/ayam.jpeg",
    ),
    Product(
      name: "Dimsum Udang",
      description: "Dimsum udang yang kenyal dan juicy, dengan isian udang utuh yang manis dan gurih. Setiap gigitan memberikan sensasi rasa laut yang segar. Cocok dinikmati sebagai camilan atau hidangan pembuka yang lezat..",
      price: 35000,
      imageAsset: "assets/udang.jpeg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Belanja"),
        backgroundColor: const Color.fromARGB(255, 41, 50, 124),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
    ),
);
}
}