import 'dart:io';


/// To automate the creation of these variables, you can use a Dart script that reads the contents of your assets/product folder and generates a .dart file containing the static const definitions.
/// 
/// Dart Code Generator Script
/// 
// Create a file named generate_assets.dart in your project root and paste the following code. This script uses the dart:io library to list files and String manipulation to format the output.
void main() async {
  // Define paths
  final directoryPath = 'assets/images/products';
  final outputFilePath = 'lib/utils/constants/produc_image_strings.dart';
  final directory = Directory(directoryPath);

  if (!await directory.exists()) {
    print('Directory $directoryPath not found!');
    return;
  }

  // Get all image files in the directory
  final List<FileSystemEntity> files = directory.listSync();
  final imageFiles = files.where((file) {
    final path = file.path.toLowerCase();
    return path.endsWith('.png') || path.endsWith('.jpg') || path.endsWith('.jpeg');
  }).toList();

  // Sort files numerically if they follow a "productX" pattern
  imageFiles.sort((a, b) => a.path.compareTo(b.path));

  // Build the content string
  final buffer = StringBuffer();
  buffer.writeln('// Generated file - do not modify manually');
  buffer.writeln('class ProductAssets {');

  for (int i = 0; i < imageFiles.length; i++) {
    // Generate variable name: product1, product2, etc.
    final varName = 'product${i + 1}';
    // Ensure the path uses forward slashes for cross-platform compatibility
    final assetPath = imageFiles[i].path.replaceAll('\\', '/');
    
    buffer.writeln("  static const String $varName = '$assetPath';");
  }

  buffer.writeln('}');

  // Write to the output file
  final outputFile = File(outputFilePath);
  await outputFile.writeAsString(buffer.toString());

  print('Successfully generated $outputFilePath with ${imageFiles.length} variables.');
}

// How to use it:
// Run the script: Open your terminal in the project root and run:
// dart run generate_assets.dart
// Access your variables: A new file lib/product_assets.dart will be created. You can now use them in your Flutter/Dart code:

// import 'package:your_project/product_assets.dart';

// Accessing a path
// String myImagePath = ProductAssets.product1; 

// Why use this approach?
// Compile-time Safety: static const variables are evaluated at compile-time, which reduces runtime overhead and prevents typos in path strings.
// Automation: As you add more images (product11, product12, etc.), simply re-run the script to update your asset constants automatically.
// Organization: Keeping asset paths in a central class (e.g., ProductAssets) is a standard best practice for large projects.