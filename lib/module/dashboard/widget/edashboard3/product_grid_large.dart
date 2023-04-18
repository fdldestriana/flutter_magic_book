import 'package:flutter/material.dart';
import 'package:edashboard2/utils/color_lib.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductGrid2 extends StatelessWidget {
  const ProductGrid2({super.key, required this.urlImage});
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      height: 305,
      child: Stack(
        children: [
          Image.network(
            urlImage,
            fit: BoxFit.contain,
            width: 345,
            height: 305,
          ),
          Positioned(
            left: 15,
            top: 14,
            child: Column(
              children: [
                Text('adidas', style: GoogleFonts.roboto()),
                const Text('Gazelle Suede'),
                const SizedBox(height: 180),
                const Text(
                    'The Adidas Originals draw inspiration from\nstreet culture and retro styles.'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
