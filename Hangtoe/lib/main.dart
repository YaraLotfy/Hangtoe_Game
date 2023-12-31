import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Hangman/categories.dart';
import 'package:flutter_application_1/screens/Hangman/game_screen.dart';
import 'package:flutter_application_1/screens/Hangman/lose_screen.dart';
import 'package:flutter_application_1/screens/Hangman/type_word_screen.dart';
import 'package:flutter_application_1/screens/Hangman/win_screen.dart';
import 'package:flutter_application_1/screens/Home.dart';
import 'package:flutter_application_1/screens/Tic_tac%20_toe/singleplayerAI.dart';
import 'package:flutter_application_1/screens/scores.dart';
import 'package:flutter_application_1/screens/NoPlayers.dart';
import 'package:flutter_application_1/screens/gamehome.dart';
import 'package:flutter_application_1/screens/howtoplay.dart';
import 'package:flutter_application_1/screens/PNames.dart';
import 'package:flutter_application_1/screens/Login.dart';
import 'package:flutter_application_1/screens/Signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/Tic_tac _toe/twoplayers.dart';
import 'screens/seemoregames.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hangtoe',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF421b9b),
      ),
      initialRoute: Login.routeName,
      routes: {
        '/': (context) => const HomeScreen(),
        Scores.routeName: (context) => const Scores(),
        NoPlayers.routeName: (context) => const NoPlayers(),
        Gamehome.routeName: (context) => const Gamehome(),
        HowToPlay.routeName: (context) => const HowToPlay(),
        PName.routeName: (context) => const PName(),
        SinglepalyerAI.routeName: (context) => const SinglepalyerAI(),
        Twoplayers.routeName: (context) => const Twoplayers(),
        Login.routeName: (context) => const Login(),
        Signup.routeName: (context) => const Signup(),
        Categories.routeName: (context) => const Categories(),
        SeeMoreGames.routeName: (context) => const SeeMoreGames(),
        GameScreen.routeName: (context) => const GameScreen(),
        LoseScreen.routeName: (context) => const LoseScreen(),
        WinScreen.routeName: (context) => const WinScreen(),
        TypeWordScreen.routeName: (context) => const TypeWordScreen(),
      },
    );
  }
}
