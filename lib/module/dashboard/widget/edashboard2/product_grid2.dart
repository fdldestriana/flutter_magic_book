import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:edashboard2/utils/color_lib.dart';
// import 'package:google_fonts/google_fonts.dart';

class ProductGrid2 extends StatelessWidget {
  const ProductGrid2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),

        // child: Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Padding(
          padding: EdgeInsets.zero,
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 4,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        'https://picsum.photos/id/1/165/135',
                        width: 345,
                        height: 305,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('adidas'),
                          Text('Gazelle Suede'),
                          SizedBox(height: 180),
                          Text(
                              'The Adidas Originals draw inspiration from\nstreet culture and retro styles.'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        'https://picsum.photos/id/1/165/135',
                        width: 165,
                        height: 290,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('adidas'),
                          Text('Gazelle Suede'),
                          SizedBox(height: 180),
                          Text(
                              'The Adidas Originals draw inspiration from\nstreet culture and retro styles.'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        'https://picsum.photos/id/1/165/135',
                        width: 165,
                        height: 290,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('adidas'),
                          Text('Gazelle Suede'),
                          SizedBox(height: 180),
                          Text(
                              'The Adidas Originals draw inspiration from\nstreet culture and retro styles.'),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
