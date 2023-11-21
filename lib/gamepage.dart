import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:warriors_of_fate/game_features/battle.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  Battle game = Battle();
  var data = "Your action";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fight Warriors!"), actions: const [
        IconButton(icon: Icon(Icons.exit_to_app), onPressed: null),
      ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: GameWidget(game: game)),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            data = 'Piedra';
                          });
                        },
                        icon: Image.asset(
                          'assets/images/RockCard.png',
                          width: 114.0,
                          height: 195.0,
                        ),
                        tooltip: 'Piedra',
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            data = 'Papel';
                          });
                        },
                        icon: Image.asset(
                          'assets/images/PaperCard.png',
                          width: 114.0,
                          height: 195.0,
                        ),
                        tooltip: 'Papel',
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            data = 'Tijera';
                          });
                        },
                        icon: Image.asset(
                          'assets/images/ScissorCard.png',
                          width: 114.0,
                          height: 195.0,
                        ),
                        tooltip: 'Tijera',
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
