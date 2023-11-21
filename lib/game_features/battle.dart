import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:loggy/loggy.dart';

class Battle extends FlameGame {
  SpriteAnimationComponent skeletonIdle = SpriteAnimationComponent();
  SpriteAnimationComponent goblinIdle = SpriteAnimationComponent();
  SpriteComponent background = SpriteComponent();
  @override
  Future<void> onLoad() async {
    super.onLoad();
    logInfo("Loading assets");

    add(background
      ..sprite = await loadSprite('BackgroundVec.png')
      ..size = size);

    final screenHeight = size[0];
    final screenwidth = size[1];

    var spriteSheet = await images.load('SkeletonIdle.png');
    final spriteSize = Vector2(150, 600);

    var spriteSheet2 = await images.load('GoblinIdle.png');
    final spriteSize2 = Vector2(150, 600);

    SpriteAnimationData spriteData = SpriteAnimationData.sequenced(
        amount: 4, stepTime: 0.2, textureSize: spriteSize);

    SpriteAnimationData spriteData2 = SpriteAnimationData.sequenced(
        amount: 4, stepTime: 0.2, textureSize: spriteSize2);
    skeletonIdle =
        SpriteAnimationComponent.fromFrameData(spriteSheet, spriteData)
          ..x = 25
          ..y = screenHeight / 4;
    goblinIdle =
        SpriteAnimationComponent.fromFrameData(spriteSheet2, spriteData2)
          ..x = screenwidth - 20
          ..y = screenHeight / 4;
    goblinIdle.flipHorizontally();
    add(skeletonIdle);
    add(goblinIdle);
  }
}
