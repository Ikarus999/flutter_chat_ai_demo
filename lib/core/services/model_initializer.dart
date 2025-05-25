import 'package:flutter/material.dart';
import 'package:flutter_gemma/core/model.dart';
import 'package:flutter_gemma/flutter_gemma.dart';
import 'package:flutter_gemma/pigeon.g.dart';
import 'package:tflite_demo/core/utils/app_assets.dart';

class ModelInitializer {
  final gemma = FlutterGemmaPlugin.instance;
  late final InferenceModel? inferenceModel;
  late final InferenceModelSession? session;

  late final String? response, response1;

  void initModel() async {
    try {
      await gemma.modelManager.setModelPath(AppAssets.modelTaskPath);
      gemma.modelManager.installModelFromAsset(AppAssets.modelTaskPath);
      if (await gemma.modelManager.isModelInstalled) {
        inferenceModel = await gemma.createModel(
            modelType: ModelType.gemmaIt,
            maxTokens: 1024,
            preferredBackend: PreferredBackend.gpu);

        debugPrint(inferenceModel.toString());
        session = await inferenceModel?.createSession(
          temperature: 0.8, // Optional, default is 0.8
          randomSeed: 1, // Optional, default is 1
          topK: 1, // Optional, default is 1
        );

        session?.addQueryChunk(Message(text: 'What are you called?'));
        response = await session?.getResponse();
        debugPrint(response);
        session?.addQueryChunk(
            Message(text: 'Will you be sufficient for a small AI chat app?'));
        response1 = await session?.getResponse();
        debugPrint(response1);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
