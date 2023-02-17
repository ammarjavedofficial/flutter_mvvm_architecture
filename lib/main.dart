import 'package:flutter/material.dart';

import 'shared/app.dart';
import 'shared/components/console_error_component.dart';


final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  // await MainHelper.initilizeApp();
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return ConsoleErrorComponent(
      flutterErrorDetails: details,
    );
  };


  runApp(
    AppNameHere(),
  );
}
