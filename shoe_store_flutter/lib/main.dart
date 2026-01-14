import 'package:flutter/material.dart';
import 'package:shoe_store_flutter/categories_section.dart';
import 'package:shoe_store_flutter/header_section.dart';
import 'package:shoe_store_flutter/popular_shoe_section.dart';
import 'package:shoe_store_flutter/product_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoe \n Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 219, 203, 98),
          primary: const Color.fromARGB(255, 219, 203, 98),
        ),
        appBarTheme: AppBarTheme(
          // backgroundColor: const Color.fromARGB(255, 219, 203, 98),
          foregroundColor: Colors.black,
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontFamily: 'Jost',
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            fontSize: 18,
            fontFamily: 'Jost',
            fontWeight: FontWeight.normal,
          ),
        ),
        useMaterial3: true,
      ),
      // home: const MyHomePage(),
      home: ProductDetailsPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Shoe StoreAppbar'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderSection(),
              CategoriesSection(),
              PopularShoeSection(),
              Text('Bottom Navigation Bar Section'),
            ],
          ),
        ),
      ),
    );
  }
}
