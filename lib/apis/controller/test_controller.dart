import 'package:flutter/material.dart';

import '../service/test_service.dart';
import 'package:go_router/go_router.dart';

import '../../view/components/atoms/toast.dart';
import '../../../constant/messages.dart';

class TestReq {
  final BuildContext context;

  TestReq({required this.context});

  // 処理の例
  // ユーザー登録
  Future<void> registerUser(Map<String, dynamic> registerUser) async {
    try {
      await TestService.registerUser(registerUser); // ログイン処理を待つ
      // ログイン完了後の処理
      GoRouter.of(context).go('/home');
      ToastUtil.show(message: Messages.registerSuccess);
    } catch (error) {
      ToastUtil.show(message: Messages.registerError);
    }
  }
}
