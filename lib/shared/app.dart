import 'package:flutter/material.dart';
import '../home/view/home_view.dart';
import '../main.dart';
import 'components/view_not_found_component.dart';
import 'theme/native_theme.dart';
import 'utils/constants/app_texts.dart';

class AppNameHere extends StatelessWidget {
  const AppNameHere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      title: AppTexts.appTitle,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: NativeThemeData().nativeLightTheme(),
      darkTheme: NativeThemeData().nativeDarkTheme(),
      home: const HomeView(),
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => ViewNotFoundComponent(viewName: settings.name!),
      ),
    );
  }
}
