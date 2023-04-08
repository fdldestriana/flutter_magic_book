import 'package:flutter/material.dart';
import 'package:edashboard2/state_util.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView>
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;
  final PageController pageController = PageController(
    initialPage: 2,
    viewportFraction: 0.8,
  );

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
