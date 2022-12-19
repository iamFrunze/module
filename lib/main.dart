import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:module/presentation/create_project/create_project_controller.dart';
import 'package:module/ui_utils/themes/light_theme.dart';
import 'package:module/utils/routes/router.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CreateProjectController>(
          create: (_) => CreateProjectController(),
        )
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
      routerConfig: RouterFactory.routes(),
      theme: LightThemeData().buildTheme(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Модуль',
    );
  }
}
