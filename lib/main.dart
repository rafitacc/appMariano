import 'package:app_tienda/src/config/service.dart';
import 'package:app_tienda/src/routes/routes.dart';
import 'package:app_tienda/src/shared_preferens/shared_preferens.dart';
import 'package:app_tienda/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final _prefs = UserPreferences();
  await _prefs.initPrefs();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final imagenes = AppUtils();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    imagenes.initImages(context);
    return GetMaterialApp(
        //  translations: Messages(),
        locale: Get.deviceLocale,
        //Locale('en', 'US'),
        //  fallbackLocale: Locale('es', 'US'),
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Veo repuestos',
        initialRoute: 'home',
        theme: themeLight(),
        //initialRoute: _prefs.saveUser ? _prefs.lastPage : "login",
        routes: screensRoutes());
  }
}
