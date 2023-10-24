
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
    // final themeMode = ref.watch(appThemeProvider);
    // return MaterialApp.router(
    //   title: 'Flutter TDD',
    //   theme: AppTheme.lightTheme,
    //   darkTheme: AppTheme.darkTheme,
    //   themeMode: themeMode,
    //   routeInformationParser: appRouter.defaultRouteParser(),
    //   routerDelegate: appRouter.delegate(),
    //   debugShowCheckedModeBanner: false,
    // );
    return ScreenUtilInit(
      designSize: const Size(375,812),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        // initialRoute: Routers.onBoarding,
        theme: ThemeData(
        useMaterial3: true,
        // canvasColor: Colors.white,///here
          colorScheme: colorSchemeBottomAppBar,
      ),
        // theme: themeMode,
        localizationsDelegates: const [
          // _newLocaleDelegate,
          // DefaultGlobalCupertinoLocalizations.delegate,
          // GlobalMaterialLocalizations.delegate,
          // DefaultGlobalWidgetsLocalizations.delegate,
        ],
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        // onGenerateRoute: Routers.generateRoute,
        supportedLocales: const [
          Locale("vi"),
          Locale("en"),
          Locale("km"),
        ],
        // onGenerateRoute: (value){
        //
        // },
      ),
    );
  }
  
}