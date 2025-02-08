import 'package:audioplayers/audioplayers.dart';
import 'package:rxdart/rxdart.dart';

class SoundService {
  late BehaviorSubject<bool> _enableSound$;
  BehaviorSubject<bool> get enableSound$ => _enableSound$;
  late AudioPlayer _fixedPlayer;
  late AudioPlayer _player;

  SoundService() {
    _enableSound$ = BehaviorSubject<bool>.seeded(true);
    _fixedPlayer = AudioPlayer();
    _player = AudioPlayer();
  }

  playSound(String sound) {
    bool isSoundEnabled = _enableSound$.value;
    if (isSoundEnabled) {
      _player.play(AssetSource("$sound.mp3"));
    }
  }
}
