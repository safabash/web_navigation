import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../constants/navigator_ids.dart';
import '../router/master_navigation_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        SizedBox(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouterMasterNavigatorEvents.screen1,
                        id: NavigatorKeys().masterNavigator);
                  },
                  child: const Text('1')),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouterMasterNavigatorEvents.screen2,
                        id: NavigatorKeys().masterNavigator);
                  },
                  child: const Text('2')),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouterMasterNavigatorEvents.screen3,
                        id: NavigatorKeys().masterNavigator);
                  },
                  child: const Text('3')),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouterMasterNavigatorEvents.screen4,
                        id: NavigatorKeys().masterNavigator);
                  },
                  child: const Text('4')),
            ],
          ),
        ),
        Expanded(
          child: Navigator(
            reportsRouteUpdateToEngine: true,
            key: Get.nestedKey(NavigatorKeys().masterNavigator),
            initialRoute: ModalRoute.of(context)!.settings.name!,
            onGenerateRoute: (settings) =>
                listMastersRouterOnGenerate(settings),
          ),
        )
      ]),
    );
  }
}
