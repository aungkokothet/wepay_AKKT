import 'package:wepay/src/ui/maintab.dart';
import 'package:wepay/src/ui/pages/exchange.dart';
import 'package:wepay/src/ui/pages/home.dart';
import 'package:wepay/src/ui/pages/login.dart';
import 'package:wepay/src/ui/pages/profile.dart';

var appRoutes = {
  HomePage.routeName: (context) => HomePage(),
  LoginPage.routeName: (context) => LoginPage(),
  ProfilePage.routeName: (context) => ProfilePage(),
  ExchangePage.routeName: (context) => ExchangePage(),
  MainTab.routeName: (context) => MainTab()
};
