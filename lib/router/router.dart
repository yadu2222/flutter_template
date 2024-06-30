import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// デフォルトで表示しているウィジェット
// import '../view/components/organism/basic_view.dart';
// 各ユーザータイプのルーター
import '../view/pages/page_home.dart';

// sample
// import '../constant/sample_data.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

// ルーターの作成
Future<GoRouter> createRouter() async {
  // jwtkeyが端末内に保存されているかを判別

  return GoRouter(
    debugLogDiagnostics: true,
    // initialLocation: isLogin ? '/home' : '/login', // ログイン状態によって初期画面を変更
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/home',
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          child: const PageHome(),
        ),
      ),
      // ボトムバーが必要な画面のルーティング
      // いらなければ StatefulShellRoute と同じ階層に GoRoute で書く
      // StatefulShellRoute.indexedStack(
      //     // parentNavigatorKey: rootNavigatorKey,    // これがあると初期画面で/homeにたどり着けない 原因究明中
      //     // ここで常時表示させたいクラスをビルドしている
      //     builder: (context, state, navigationShell) {
      //       return BasicScreenView(navigationShell: navigationShell);
      //     },
      //     branches: [...await getBranches()])
    ],
  );
}
