import 'package:flutter_mediapipe_chat/flutter_mediapipe_chat.dart';

class ModelInitializer {
  final chatPlugin = FlutterMediapipeChat();

  final config = ModelConfig(
    path: "assets/raw/gemma3_1b.tflite",
    temperature: 0.7,
    maxTokens: 1024,
    topK: 50,
    randomSeed: 42,
    loraPath: null,
  );

  void initModel() async {
    await chatPlugin.loadModel(config);
  }
}
