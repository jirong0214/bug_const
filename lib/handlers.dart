import 'home_page.dart';

class PageHandlers {
  static HomePage $HomePage(dynamic args) {
    args ??= <String, dynamic>{};
    return HomePage(
      time: args['time'],
    );
  }
}