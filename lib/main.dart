import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/presentation/create_project/create_project_controller.dart';
import 'package:module/presentation/home/home_screen_controller.dart';
import 'package:module/ui_utils/themes/light_theme.dart';
import 'package:module/utils/routes/router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeScreenController>(
          create: (_) => HomeScreenController(),
        ),
        ChangeNotifierProvider<CreateProjectController>(
          create: (_) => CreateProjectController(),
        ),
      ],
      child: EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ru')],
        path: 'assets/l10n',
        fallbackLocale: const Locale('ru'),
        child: const MyApp(),
      ),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: LightThemeData().buildTheme(),
//         localizationsDelegates: context.localizationDelegates,
//         supportedLocales: context.supportedLocales,
//         locale: context.locale,
//         home: const Scaffold(body: FilterBottomSheet()));
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.setLocale(const Locale('ru'));

    return MaterialApp.router(
      builder: (context, child) {
        return ResponsiveWrapper.builder(
          child,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ],
        );
      },
      routerConfig: RouterFactory.routes(),
      theme: LightThemeData().buildTheme(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Модуль',
    );
  }
}
