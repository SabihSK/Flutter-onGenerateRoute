import 'package:flutter/material.dart';
import 'package:on_generate_route_example/view/firstpage.dart';
import 'package:on_generate_route_example/view/home.dart';
import 'package:on_generate_route_example/view/secondpage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      //!-----Home------
      case Home.route:
        return MaterialPageRoute(builder: (_) => const Home());

      //!-----FirstPage------
      case FirstPage.route:
        return MaterialPageRoute(
            builder: (_) =>
                FirstPage(routeData: args)); //* Multiple data pass using list

      //!-----SecondPage------
      case SecondPage.route:
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              data: args,
            ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();

      //!-----default------
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
