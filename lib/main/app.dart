
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/routes/app_route.dart';
import 'package:food_recipe_app/shared/theme/app_theme.dart';
class MyApp extends ConsumerWidget{
  MyApp({super.key});

  final appRouter = AppRoute();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        builder:  (context, child){
          final MediaQueryData data = MediaQuery.of(context);
          return MediaQuery(
            data: data.copyWith(
                textScaler: TextScaler.noScaling,
            ),
            child: child!,
          );
        },
        theme: ThemeData(
        useMaterial3: true,
          colorScheme: colorSchemeBottomAppBar,
        ),
        localizationsDelegates: const [],
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        supportedLocales: const [
          Locale("vi"),
          Locale("en"),
          Locale("km"),
        ],
      ),
    );
  }
  
}