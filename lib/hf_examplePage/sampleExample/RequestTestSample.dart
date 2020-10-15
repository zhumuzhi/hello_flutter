import 'package:dio/dio.dart';

///       创建时间：2020/10/15
///       修改人  ：zhumz
///       描述    ：

void testMedth() {
  var paramsMap = {
    "order_id": "88118794254",
    "login_account": "wxvcqi978436",
    "account_type": "20",
    "version_code": "79",
    "channel": "appstore",
    "member_id": "159",
    "device_id": "13f7836fde35c3e21bb274b21f1aee6d",
    "sign": "17dc5c95bbbae6f62ed917993dec867f",
    "token": "24639c6b71141b1fdc80b679e226c9c3",
    "timestamp": "1602207349000",
    "network": "WIFI",
    "os_version": "13.7",
    "accountType": "20",
    "device_platform": "ios",
    "memberId": "159",
    "device_brand": "苹果",
    "loginAccount": "wxvcqi978436",
  };

  String url =
      'https://t2.fsyuncai.com/order/orderstore/queryStoreOrderDetails';

  print('==Dio-Post请求的url：$url');
  print('==Dio-Post请求的参数为：$paramsMap');

  postHttp(url, paramsMap);
}

void postHttp(String url, Map params) async {
  try {
    Response response = await Dio().post(url, queryParameters: params);
    // Map objetMap = response as Map;
    // dynamic object = objetMap['orderInvoice'];
    // print('==objet==:$object');
    print('==Dio-Post请求的结果为：$response');

    if (response != null) {
      // XFSOrderDetailsModel orderDetailsModel = XFSOrderDetailsModel.fromJson(response);
      Map objetMap = response as Map;
      dynamic object = objetMap['orderInvoice'];
      print('==objet==:$object');
    }
  } catch (error) {
    // print('Dio-Post请求的错误为：$error');
  }
}
