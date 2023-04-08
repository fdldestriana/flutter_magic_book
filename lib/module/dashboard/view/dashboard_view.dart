import 'package:flutter/material.dart';
import 'package:edashboard2/core.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const EDashboardAppBar(),
      body: Column(
        children: [
          EDashboardHeader(pageController: controller.pageController),
          const SizedBox(height: 15),
          const CategoriesHeader(),
          const SizedBox(height: 4),
          const CategoriesGrid()
        ],
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
