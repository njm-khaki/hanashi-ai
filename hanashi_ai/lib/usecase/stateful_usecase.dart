// 状態管理のライフサイクル用インターフェース
abstract interface class StatefulUsecase {
  // 初期化時に呼ばれるメソッド
  Future<void> onInitState();
  // 破棄時に呼ばれるメソッド
  Future<void> onDispose();
}
