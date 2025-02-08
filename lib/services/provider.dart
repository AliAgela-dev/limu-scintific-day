import 'package:get_it/get_it.dart';
import 'package:limuscintificday/services/alert.dart';
import 'package:limuscintificday/services/board.dart';
import 'package:limuscintificday/services/sound.dart';


GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton(BoardService());
  locator.registerSingleton(SoundService());
  locator.registerSingleton(AlertService());
}
