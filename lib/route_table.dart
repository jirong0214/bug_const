
import 'package:bug_const/home_page.dart';

class RouteTable {

  // static const HomePage homePage = HomePage(time: 1709049600000,); // WRONG

  // static const HomePage homePage = HomePage(time: 1 << 31 - 1,);  // WRONG

  static const HomePage homePage = HomePage(time: 1 << 30,);  // WRONG

  // static const HomePage homePage = HomePage(time: 1 << 30 - 1,);  // FINE

  // static const HomePage homePage = HomePage(time: 1 << 29,);  // FINE

}