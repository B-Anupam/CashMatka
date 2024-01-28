import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matka/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:matka/presentation/games/full_sangam/full_sangam_screen.dart';
import 'package:matka/presentation/games/half_sangam/half_sangam_screen.dart';
import 'package:matka/presentation/games/triple_patti/triple_patti_screen.dart';
import 'core/app_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) async {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);

    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: 'matka',
        // home: HalfSangamScreen(),
        initialBinding: InitialBindings(),
        initialRoute: AppRoutes.homePageScreen,
        getPages: AppRoutes.pages,
      );
    });
  }
}
