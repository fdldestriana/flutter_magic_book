import 'dart:ui';
import 'package:flutter/gestures.dart';
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
          SizedBox(
            height: 120,
            child: PageView.builder(
              controller: controller.pageController,
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: SizedBox(
                    width: 285,
                    height: double.infinity,
                    child: Image.network(
                      'https://picsum.photos/id/$index/285/120',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              pageSnapping: false,
              scrollBehavior:
                  // configuring to swipe pageview with several device
                  ScrollConfiguration.of(context).copyWith(dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
                PointerDeviceKind.trackpad,
              }),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
