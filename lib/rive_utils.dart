import 'package:rive/rive.dart';

class Riveutils {
  static StateMachineController? getRiveController(
      Artboard artboard, String animation) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, animation);
    if (controller != null) {
      artboard.addController(controller);
      return controller;
    }
    
  }
}
