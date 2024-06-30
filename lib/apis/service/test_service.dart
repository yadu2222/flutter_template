import '../http_req.dart';
import '../../constant/urls.dart';
import '../../models/req_model.dart';

class TestService {
  static Future<void> registerUser(Map<String, dynamic> reqBody) async {
    // リクエストを生成
    final reqData = Request(
      url: Urls.registerUser,
      reqType: 'POST',
      body: reqBody,
      headers: {'Content-Type': 'application/json'},
    );
    await HttpReq.httpReq(reqData);

    // // 処理の例
    // User user = User(
    //     userUUID: "ertyui",
    //     userName: reqBody['userName'],
    //     userTypeId: reqBody['userTypeId'],
    //     mailAddress: reqBody['mailAddress'],
    //     password: reqBody['password'],
    //     jtiUUID: "aiaueo",
    //     jwtKey: resData['srvResData']['authenticationToken']);
    // User.insertUser(user);  // dbへの保存 getUserでjwtKeyがdbから読み込まれるため

    // // ユーザー情報の取得と更新
    // user = await getUser();
    // User.updateUser(user);
  }
}
