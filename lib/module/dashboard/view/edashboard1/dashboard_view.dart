import 'package:flutter/material.dart';

import '../../controller/edashboard1/dashboard_controller.dart';
import '../../widget/edashboard1/dashboard_appbar.dart';
import '../../widget/edashboard1/dashboard_grid.dart';
import '../../widget/edashboard1/dashboard_header.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const DashboardAppBar(),
          DashboardHeader(
              pageController: controller.pageController,
              tabController: controller.tabController),
          DashboardGrid(products: controller.products)
        ],
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
