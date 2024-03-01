import 'package:bug_const/handlers.dart';
import 'package:flutter/material.dart';

class RouteTable {
  static const Map<String, Widget Function(dynamic args)> map = {
    '/home': PageHandlers.$HomePage,
  };
}

