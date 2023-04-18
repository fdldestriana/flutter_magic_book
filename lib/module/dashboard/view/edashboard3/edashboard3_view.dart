import 'package:flutter/material.dart';
import '../../controller/edashboard3/edashboard3_controller.dart';
import '../../widget/edashboard2/edashboard_appbar.dart';
import '../../widget/edashboard2/product_grid.dart';

class Dashboard3View extends StatefulWidget {
  const Dashboard3View({super.key});

  Widget build(context, Dashboard3Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const EDashboardAppBar(),
      body: ListView(
        children: const [ProductGrid()],
      ),
    );
  }

  @override
  State<Dashboard3View> createState() => Dashboard3Controller();
}
