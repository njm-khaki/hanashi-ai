/// 生成AIのテキストから不要な記号を除去する関数
String parseGenerateAiText(String text) {
  return text
      // 連続した*や#を空文字に置換
      .replaceAllMapped(RegExp(r'\*{2,}|#{2,}'), (match) => '')
      // 単体の*や#も除去（前に空白があれば残す）
      .replaceAllMapped(RegExp(r'(\s*)\*|#'), (match) => '${match.group(1)}')
      // 前後の空白を除去
      .trim();
}
