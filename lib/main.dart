import 'package:longevity_resort/cubit/page_cubit.dart';
import 'package:longevity_resort/ui/pages/bonus_page.dart';
import 'package:longevity_resort/ui/pages/get_started_page.dart';
import 'package:longevity_resort/ui/pages/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // if (shouldUseFirestoreEmulator) {
  //   FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
         // '/': (context) => const SplashPage(),
         // '/get-started': (context) => const GetStartedPage(),
         // '/sign-up': (context) => const SignUpPage(),
        //  '/bonus': (context) => const BonusPage(),
          '/': (context) => const MainPage(),
        },
      ),
    );
  }
}
