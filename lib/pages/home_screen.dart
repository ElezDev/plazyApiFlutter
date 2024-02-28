import 'package:ecomerceui/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text(
            'Productos',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCategories(index: 0, name: 'Todos'),
              _buildCategories(index: 1, name: 'Comida'),
              _buildCategories(index: 2, name: 'Zapatos'),
              
              // Espacio entre las categorías y los productos
            ],
          ),
          _reder(),
        ],
      ),
    );
  }

  _reder() => const SizedBox(width: 770, height: 550, child: ProductGrid());

  _buildCategories({required int index, required String name}) => Container(
        width: 70,
        height: 40,
        margin: const EdgeInsets.only(top: 10, right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isSelected == index ? Colors.green : Colors.green.shade100),
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      );
}
