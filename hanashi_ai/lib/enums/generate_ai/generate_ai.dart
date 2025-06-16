import 'package:hanashi_ai/apis/gemini/gemini_client.dart';
import 'package:hanashi_ai/apis/generate_ai_client.dart';

enum GenerateAi {
  gemini(name: 'Gemini');

  const GenerateAi({required this.name});

  final String name;
}

extension GenerateAiClientExtension on GenerateAi {
  /// 使用するAIクライアントを返す
  Map<GenerateAi, GenerateAiClient> get _clients => {
    GenerateAi.gemini: GeminiClient(),
  };

  GenerateAiClient get client => _clients[this] ?? GeminiClient();
}
