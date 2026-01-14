import 'package:flutter/material.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  int selectedIndex = 0;

  final List<String> categories = const [
    'All',
    'Addidas',
    'Puma',
    'Woodland',
    'Jordan',
    'Nicke',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ActionChip(
              label: Text(categories[index]),
              backgroundColor: selectedIndex == index
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey[300],
              onPressed: () {
                setState(() {
                  selectedIndex = index;
                });
                print('Selected: ${categories[index]}');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide.none,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
            ),
          );
        },
      ),
    );
  }
}
