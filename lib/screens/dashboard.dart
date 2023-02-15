import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../router/master_navigation_router.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('DAshboard'),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(RouterMasterNavigatorEvents.screen1);
              },
              child: const Text('Click'))
        ],
      ),
    );
  }
}
