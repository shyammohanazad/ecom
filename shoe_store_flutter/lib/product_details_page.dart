import 'package:flutter/material.dart';
import 'show_data.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final selectedSize = shoeData[0]['size'][0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Details'), centerTitle: true),
      body: Column(
        children: [
          Text(
            shoeData[0]['name'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Spacer(),
          Image.asset(shoeData[1]['imageUrl'] as String, height: 250),
          Spacer(),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(24.0),
            ),
            height: 300,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Price: \$${shoeData[0]['price']}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: (shoeData[0]['size'] as List<dynamic>).length,
                    itemBuilder: (context, index) {
                      return Chip(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 8.0,
                        ),
                        // decoration: BoxDecoration(
                        //   color:
                        //       selectedSize ==
                        //           (shoeData[0]['size'] as List<dynamic>)[index]
                        //       ? const Color.fromARGB(230, 201, 199, 199)
                        //       : const Color.fromARGB(255, 201, 199, 199),
                        //   borderRadius: BorderRadius.circular(12.0),
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: const Color.fromARGB(255, 201, 199, 199),
                        //       spreadRadius: 2,
                        //       blurRadius: 5,
                        //       offset: const Offset(0, 3),
                        //     ),
                        //   ],
                        // ),
                        label: Text(
                          '${(shoeData[0]['size'] as List<dynamic>)[index]}',
                          // style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
