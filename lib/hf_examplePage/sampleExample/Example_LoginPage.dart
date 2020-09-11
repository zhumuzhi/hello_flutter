import 'package:flutter/material.dart';
import 'dart:math';
// import 'package:fluttertoast/fluttertoast.dart' as Toast;

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

class LoginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<LoginPage> {

  // final _textEditingController = TextEditingController();
  var _mockCode = "A R 5 X";
  var _isSelectedProtocol = false;
  var _isShowPWD = false;
  String _alphabet = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM";
  BuildContext _context;

  /// Init

  @override
  void dispose() {
    super.dispose();
    FocusScope.of(context).requestFocus(FocusNode());
  }

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
          _topMenu(),
          _logoImage(),
          _phoneNum(),
          _password(),
          _verifyCode(),

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
            child: Image.asset('asset/images/login/common_close', scale: 2),
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

  Widget _logoImage() {
    return Container(
      alignment: Alignment.topCenter,
      child: Image.asset('assets/images/login/login_logo.png',scale: 2),
    );
  }

  Widget _phoneNum() {
    return Container(
      margin: EdgeInsets.only(left: kHorizontalMargin, top: 20, right: kHorizontalMargin),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1,color: Colors.grey[400]))
      ),
      child: TextField(
        // controller: _textEditingController,
        decoration: InputDecoration(
          hintText: "请您输入账号或手机号",
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _password() {
    return Container(
      margin: EdgeInsets.only(left: kHorizontalMargin, top: 20, right: kHorizontalMargin),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Colors.grey[400]))),
      child: TextField(
        decoration: InputDecoration(
            hintText: "请输入密码",
            border: InputBorder.none,
            suffix: Container(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    splashColor: Colors.white,
                    child: Container(
                      padding: EdgeInsets.only(right: 5),
                      child: Image.asset(
                        'assets/images/login/${_isShowPWD ? 'eye1' : 'eye2'}.png',
                        scale: 2,
                        width: 20,
                        height: 20,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _isShowPWD = !_isShowPWD;
                      });
                    },
                  ),
                  Container(
                    height: 15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400], width: 1),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.white,
                    child: Container(
                      padding: EdgeInsets.only(left: 12),
                      child: Text("忘记密码"),
                    ),
                    onTap: () => _onClickButton(loginPageActionType.forgetPwd),
                  ),
                ],
              ),
            )),
        obscureText: _isShowPWD,
      ),
    );
  }

  // 验证码
  Widget _verifyCode() {
    return Container(
      margin: EdgeInsets.only(left: kHorizontalMargin, top: 20, right: kHorizontalMargin),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[400], width: 1))
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: '请输入验证码',
            border: InputBorder.none,
            suffixIcon: InkWell(
              splashColor: Colors.white,
              child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  width: 100,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300], width: 1)
                  ),
                  child: Text(_mockCode, style: TextStyle(fontSize: 22, color: Colors.orange))
              ),
              onTap: () {
                setState(() {
                  var str = '';
                  for (var i = 0; i < 4; i++) {
                    str = str + _alphabet[Random().nextInt(_alphabet.length)];
                  }
                  _mockCode = str;
                });
              },
            )
        ),
      ),
    );
  }


}
