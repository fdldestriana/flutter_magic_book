import 'package:flutter/material.dart';
import 'package:edashboard2/core.dart';

import '../../widget/edashboard2/edashboard_appbar.dart';

import '../../widget/edashboard2/categories_grid.dart';
import '../../widget/edashboard2/edashboard_header.dart';
import '../../widget/edashboard2/header.dart';
import '../../widget/edashboard2/product_grid.dart';

class Dashboard2View extends StatefulWidget {
  const Dashboard2View({super.key});

  Widget build(context, Dashboard2Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const EDashboardAppBar(),
      body: ListView(
        children: [
          EDashboardHeader(pageController: controller.pageController),
          const SizedBox(height: 15),
          const Header(headerTitle: 'Categories'),
          const SizedBox(height: 4),
          const CategoriesGrid(),
          const SizedBox(height: 4),
          const Header(headerTitle: 'Discounts'),
          const ProductGrid()
        ],
      ),
    );
  }

  @override
  State<Dashboard2View> createState() => Dashboard2Controller();
}
