/// 丸括弧や全角括弧で囲まれた部分を除去する関数
String trimBrackets(String text) {
  return text
      // ( ) または （ ） で囲まれた部分を空文字に置換
      .replaceAllMapped(RegExp(r'[\(|（].*?[\)|）]'), (match) => '')
      // 前後の空白を除去
      .trim();
}
