import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Hangman/categories.dart';
// import 'package:flutter_application_1/screens/Hangman/game_screen.dart';
import 'package:flutter_application_1/screens/Hangman/type_word_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../Utils/data.dart';
import 'package:flutter_application_1/providers/user_provider.dart';

class LoseScreen extends ConsumerStatefulWidget {
  static const String routeName = '/lose-screen';

  const LoseScreen({super.key});
  @override
  ConsumerState<LoseScreen> createState() => _LoseScreenState();
}

class _LoseScreenState extends ConsumerState<LoseScreen> {
  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    // final String word = data['word'];
    final int score = data['score'];
    final String guessedWord = data['guessedWord'];

    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "\nHARD LUCK!\n${ref.watch(nickname1Proivder)} LOSE",
              textAlign: TextAlign.center,
              style: theme.textTheme.headline1!
                  .copyWith(color: Colors.white, fontSize: 50.0),
            ),
            Text(
              "Your score : $score",
              textAlign: TextAlign.center,
              style: theme.textTheme.headline1!
                  .copyWith(color: Colors.white, fontSize: 24.0),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Word : $guessedWord",
              textAlign: TextAlign.center,
              style: theme.textTheme.headline1!
                  .copyWith(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/", (route) => false);
              },
              child: FittedBox(
                child: Text("Main Menu", style: theme.textTheme.headline5),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                  context,
                  Data.type == "Oneplayer"
                      ? Categories.routeName
                      : TypeWordScreen.routeName,
                  arguments: ""),
              child: FittedBox(
                child: Text("Play Again", style: theme.textTheme.headline5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
