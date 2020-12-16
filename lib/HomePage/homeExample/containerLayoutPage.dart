import 'package:flutter/material.dart';
import 'package:dio/dio.dart';



class ContainerLayoutPage extends StatefulWidget {
  @override
  _ContainerLayoutPageState createState() => _ContainerLayoutPageState();
}

class _ContainerLayoutPageState extends State<ContainerLayoutPage> {

  @override
  void initState() {

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

    postHttp('https://t2.fsyuncai.com/order/orderstore/queryStoreOrderDetails', paramsMap);

    super.initState();
  }

  void postHttp(String url, Map params) async {
    print('==Dio-Post请求方法执行==');
    try {
      Response response = await Dio().post(url, queryParameters: params);
      print('Dio-Post请求的结果为：$response');
    } catch (error) {
      print('Dio-Post请求的错误为：$error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContainerCase'),
      ),
      body: Center(child: buildImageColumn()),
    );
  }

  Widget buildImageColumn() => Container(
    decoration: BoxDecoration(
      color: Colors.black26,
    ),
    child: Column(
      children: <Widget>[
        buildImageRow(1),
        buildImageRow(3),
      ],
    ),
  );

  Widget buildDecoratedImage(int imageIndex) => Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(const Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child: Image.asset('assets/'
          'images/pic$imageIndex.jpg'),
    ),
  );

  Widget buildImageRow(int imageIndex) => Row(
    children: <Widget>[
      buildDecoratedImage(imageIndex),
      buildDecoratedImage(imageIndex + 1),
    ],
  );
}


