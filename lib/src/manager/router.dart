import 'package:wepay/src/ui/maintab.dart';
import 'package:wepay/src/ui/pages/exchange.dart';
import 'package:wepay/src/ui/pages/home.dart';
import 'package:wepay/src/ui/pages/login.dart';
import 'package:wepay/src/ui/pages/send.dart';

var appRoutes = {
  HomePage.routeName: (context) => HomePage(),
  LoginPage.routeName: (context) => LoginPage(),
  SendPage.routeName: (context) => SendPage(),
  ExchangePage.routeName: (context) => ExchangePage(),
  MainTab.routeName: (context) => MainTab()
};
