import 'package:edashboard2/module/dashboard/widget/edashboard2/product_grid2.dart';
import 'package:flutter/material.dart';
import 'package:edashboard2/core.dart';

import '../../widget/edashboard2/edashboard_appbar.dart';

// import '../../widget/edashboard2/categories_grid.dart';
// import '../../widget/edashboard2/edashboard_appbar.dart';
// import '../../widget/edashboard2/edashboard_header.dart';
// import '../../widget/edashboard2/header.dart';
// import '../../widget/edashboard2/product_grid.dart';

class Dashboard2View extends StatefulWidget {
  const Dashboard2View({super.key});

  Widget build(context, Dashboard2Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const EDashboardAppBar(),
      body: ListView(
        children: const [
          // EDashboardHeader(pageController: controller.pageController),
          // const SizedBox(height: 15),
          // const Header(headerTitle: 'Categories'),
          // const SizedBox(height: 4),
          // const CategoriesGrid(),
          // const SizedBox(height: 4),
          // const Header(headerTitle: 'Discounts'),
          ProductGrid2()
        ],
      ),
    );
  }

  @override
  State<Dashboard2View> createState() => Dashboard2Controller();
}
