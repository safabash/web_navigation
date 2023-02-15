
import 'package:get/get.dart';
import 'package:web_navigation/screens/dashboard.dart';
import 'package:web_navigation/screens/home.dart';

List<GetPage> listRoutes = <GetPage>[
  GetPage(name: RouterEvents().home, page: () => const Home()),
  GetPage(name: RouterEvents().dashboard, page: () => const DashBoard()),
];

class RouterEvents {
  final String home = "/home";
  final String dashboard = "/";
}
