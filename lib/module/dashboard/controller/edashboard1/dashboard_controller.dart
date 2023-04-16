import 'package:flutter/material.dart';

import '../../../../model/product.dart';
import '../../../../service/dashboard_service.dart';
import '../../../../state_util.dart';
import '../../view/edashboard1/dashboard_view.dart';

class DashboardController extends State<DashboardView>
    with TickerProviderStateMixin
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    getProducts();
  }

  final PageController pageController = PageController();
  late TabController tabController;

  List<Product> _products = [];
  List<Product> get products => _products;

  void getProducts() async {
    _products = await DashboardService.getProducts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
