import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otex_app_task/core/utils/app_router.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: kWhiteColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          title: 'Otex App',
          debugShowCheckedModeBanner: false,
          locale: Locale('ar'),
          theme: ThemeData.dark().copyWith(
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.white,
            ),
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.tajawalTextTheme(),
          ),
        );
      },
    );
  }
}
