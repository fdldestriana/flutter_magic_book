import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisSpacing: 15,
            mainAxisSpacing: 20,
            crossAxisCount: 2),
        itemBuilder: (context, index) => SizedBox(
          height: 204,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  'https://picsum.photos/id/$index/165/135',
                  width: 165,
                  height: 135,
                  fit: BoxFit.cover,
                ),
              ),
              const Text('Suede Chukka Boots'),
              const Text('Suede Chukka Boots'),
              const Text('Suede Chukka Boots'),
            ],
          ),
        ),
      ),
    );
  }
}
