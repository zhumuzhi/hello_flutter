import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart' as Toast;

// 左右边距
const kHorizontalMargin = 25.0;

enum loginPageActionType {
  // 左上角关闭
  topClose,
  // 在线客服
  customServer,
  // 忘记密码
  forgetPwd,
  // 刷新验证码
  refreshAuthCode,
  // 平台服务协议
  agreement,
  // 隐私政策
  privacy,
  // 登录
  login,
  // 手机快速注册
  register,
  // 短信验证码登录
  authCodeLogin,
  // 微信登录
  wechatLogin,
  // appleID登录
  appleID
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  final _textEditingController = TextEditingController();
  var _mockCode = "A R 5 X";
  var _isSelectedProtocol = false;
  var _isShowPWD = false;
  String _alphabet = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM";
  BuildContext _context;

  /// Init

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[

        ],
      ),
    );
  }

  /// Event
  void _goBack() {

  }

  void _onClickButton(loginPageActionType type) {

  }


  Widget _topMenu() {
    return Container(
      padding: EdgeInsets.only(left:kHorizontalMargin, right: kHorizontalMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            splashColor: Colors.white,
            onTap: () => _onClickButton(loginPageActionType.topClose),
            child: Image.asset('', scale: 2),
          ),
          InkWell(
            splashColor: Colors.white,
            onTap: () => _onClickButton(loginPageActionType.customServer),
            child: Text('在线客服'),
          ),
        ],
      ),
    );
  }




}
