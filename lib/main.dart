import 'package:al_nuim/controller/profile_controller.dart';
import 'package:al_nuim/view/splash_screen.dart';
import 'package:al_nuim/View/signin_screen.dart';
import 'package:al_nuim/view/dashboard_screen.dart';
import 'package:al_nuim/controller/dashboard_controller.dart';
import 'package:al_nuim/controller/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'view/add_address_screen.dart';
import 'view/address_screen.dart';
import 'view/profile_screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // builder: ,
      providers: [
        ChangeNotifierProvider(create: (_) => SignInController()),
        ChangeNotifierProvider(create: (_) => DashBoardController()),
        ChangeNotifierProvider(create: (_) => ProfileController()),
      ],
      child: MaterialApp(
        builder: EasyLoading.init(
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(),
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: child!,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo3',
        theme: ThemeData(
          textTheme: TextTheme(
            labelSmall: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400, fontSize: 14),
            headlineLarge:
                GoogleFonts.manrope(fontWeight: FontWeight.w700, fontSize: 32),
            bodyLarge: GoogleFonts.manrope(
                fontWeight: FontWeight.normal, fontSize: 32),
            bodyMedium: GoogleFonts.manrope(
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
            displaySmall: GoogleFonts.manrope(
                // fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Colors.white),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            backgroundColor: Color.fromRGBO(182, 151, 79, 1),
          )),
          primaryColor: const Color.fromARGB(255, 182, 151, 79),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 182, 151, 79)),
          useMaterial3: true,
        ),
        home: SigninScreen(),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
