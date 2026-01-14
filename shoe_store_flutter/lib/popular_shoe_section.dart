import 'package:flutter/material.dart';
import 'package:shoe_store_flutter/show_data.dart';

class PopularShoeSection extends StatefulWidget {
  const PopularShoeSection({super.key});

  // final List<String> shoeImageUrl = const [
  //   'assets/images/shoe_1.png',
  //   'assets/images/shoe_2.png',
  //   'assets/images/shoe_3.png',
  //   'assets/images/shoe_4.png',
  //   'assets/images/shoe_5.png',
  //   'assets/images/shoe_6.png',
  // ];
  // final List<String> shoeNames = const [
  //   'Adiddas',
  //   'Nike',
  //   'Reebok',
  //   'Puma',
  //   'Converse',
  //   'Vans',
  // ];

  @override
  State<PopularShoeSection> createState() => _PopularShoeSectionState();
}

class _PopularShoeSectionState extends State<PopularShoeSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: shoeData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: index % 2 == 0
                  ? const Color.fromARGB(145, 249, 255, 137)
                  : const Color.fromARGB(135, 112, 255, 234),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        shoeData[index]['imageUrl'] as String,
                        height: 150,
                      ),
                    ),
                    Text(
                      shoeData[index]['name'] as String,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('\$${shoeData[index]['price']}'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
