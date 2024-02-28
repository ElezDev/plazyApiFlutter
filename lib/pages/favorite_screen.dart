import 'package:ecomerceui/widgets/product_card.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Product> favoriteProducts;

  const FavoriteScreen({super.key, required this.favoriteProducts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Products'),
      ),
      body: favoriteProducts.isEmpty
          ? const Center(
              child: Text('No favorite products yet!'),
            )
          : ListView.builder(
              itemCount: favoriteProducts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(favoriteProducts[index].title),
                  subtitle:
                      Text('\$${favoriteProducts[index].price.toString()}'),
                  // Otros detalles del producto
                );
              },
            ),
    );
  }
}
