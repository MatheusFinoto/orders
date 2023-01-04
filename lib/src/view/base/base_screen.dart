import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:orders/src/view/orders/orders_screen.dart';

import '../../components/sidebar.dart';
import '../../stores/base_store.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final BaseStore baseStore = GetIt.I<BaseStore>();

  @override
  void initState() {
    super.initState();
    baseStore.pageController =
        PageController(initialPage: baseStore.selectedPage);
    reaction((_) => baseStore.selectedPage,
        (int page) => baseStore.pageController!.jumpToPage(page));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          const SideBar(),
          Expanded(
            child: Center(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxWidth: 1360, maxHeight: size.height),
                child: Observer(builder: (_) {
                  return PageView(
                    controller: baseStore.pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Container(),
                      const OrdersScreen()
                      // HomeScreen(),
                      // DashboardScreen(),
                      // OnboardScreen(),
                      // HealthCheckScreen(),
                      // OriginationScreen(),
                    ],
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
