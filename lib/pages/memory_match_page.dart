import 'package:flutter/material.dart';
import 'package:limuscintificday/widgets/mobile/game_board_mobile.dart';


class MemoryMatchPage extends StatelessWidget {
  const MemoryMatchPage({
    required this.gameLevel,
    super.key,
  });

  final int gameLevel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: ((context, constraints) {
            
              return GameBoardMobile(
                gameLevel: gameLevel,
              );
          }),
        ),
      ),
    );
  }
}
