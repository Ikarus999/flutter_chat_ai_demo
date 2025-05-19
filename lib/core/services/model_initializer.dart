import 'package:flutter_mediapipe_chat/flutter_mediapipe_chat.dart';
import 'package:tflite_demo/core/utils/app_assets.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class ModelInitializer {
  final chatPlugin = FlutterMediapipeChat();
  late final Interpreter interpreter;
  final config = ModelConfig(
    path: AppAssets.modelTaskPath,
    temperature: 0.7,
    maxTokens: 1024,
    topK: 50,
    randomSeed: 42,
    loraPath: null,
  );

  void initModel() async {
    interpreter = await Interpreter.fromAsset(AppAssets.modelPath);
    await chatPlugin.loadModel(config);
  }
}
