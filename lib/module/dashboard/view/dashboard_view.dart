import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:edashboard2/core.dart';

class DashboardView extends StatefulWidget {
  DashboardView({
    Key? key,
  }) : super(key: key);

  // final List<String> imageCategories = [
  //   'https://api.lorem.space/image/watch?w=345&h=180&r=',
  //   'https://api.lorem.space/image/fashion?w=345&h=180&r=',
  //   'https://api.lorem.space/image/shoes?w=345&h=180&r=',
  //   'https://api.lorem.space/image/furniture?w=345&h=180&r=',
  // ];

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const EDashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: PageView(
                  scrollBehavior:
                      // configuring to swipe pageview with several device
                      ScrollConfiguration.of(context).copyWith(dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.trackpad,
                  }),
                  pageSnapping: false,
                  onPageChanged: (int pageIndex) {
                    controller.tabController.index = pageIndex;
                  },
                  controller: controller.pageController,
                  children: [
                    ...List.generate(
                      4,
                      (index) => Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.network(
                            'https://picsum.photos/id/$index/285/120',
                            width: 285,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
