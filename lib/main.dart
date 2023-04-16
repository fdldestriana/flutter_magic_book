import 'package:edashboard2/state_util.dart';
import 'package:flutter/material.dart';

import 'module/dashboard/view/edashboard1/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: Get.navigatorKey,
      home: const DashboardView(),
    );
  }
}
