import 'package:flutter/material.dart';
import 'package:hello_flutter/Support/utils/screen_utils.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:hello_flutter/hf_examplePage/model/xfs_goods_model.dart';

class OrderHeaderPage extends StatefulWidget {
  @override
  _OrderHeaderPageState createState() => _OrderHeaderPageState();
}

class _OrderHeaderPageState extends State<OrderHeaderPage> {
  Timer _countdownTimer;
  int _day, _hour, _minute, _second;

  String titleStr;
  int baseCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('订单详情')),
      body: ListView(
        children: [
          XFSOrderDetailsTitleItem(),
          countDownLabel(titleStr)
        ],
      ),
    );
  }

  Widget countDownLabel(String showStr) {
    return Container(
      color: Colors.green,
      height: 100,
      child: Text('$showStr'),
    );
  }

  @override
  void initState() {
    super.initState();
    // baseCount = (1601200059000 - 1601200017000) / 1000;
    // print('初始化倒计时赋值:$baseCount');
  }

}

/// ============================================ 标题Item ============================================
class XFSOrderDetailsTitleItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      _backView(),
      Positioned(top: 10, left: 10, right: 10, child: _infoView())
    ]);
  }

  Widget _backView() {
    return Column(children: [
      Container(
          height: 100,
          width: KScreen.width(),
          child: Image.asset('assets/images/xfs_order_InfoBackground.png',
              fit: BoxFit.fill)),
      Container(color: Colors.white38, height: 50)
    ]);
  }

  Widget _infoView() {

    int countParam = (1601200059000 - 1601200017000) ~/1000;
    return Column(
      children: [
        _orderTitle(),
        XFSOrderCountDownWidget(downTime: countParam,),
        XFSOrderDetailsOrderInfoItem()
      ],
    );
  }

  Widget _orderTitle() {
    return Container(
      child: Row(
        children: [
          Container(
              child: Image.asset('assets/images/xfs_order_waitPay.png'),
              width: 16,
              height: 16),
          Container(width: 5),
          Text(
            '待付款',
            // fontSize: 16,
            // textColor: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _countTime() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(children: [
        Text(
          '剩余时间：02小时08分38秒',
          // fontSize: 14,
          // textColor: Colors.white
        )
      ]),
    );
  }
}

/// ============================================ 订单信息Item ============================================
class XFSOrderDetailsOrderInfoItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [_contacts(), _address()],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: Colors.grey,
              offset: Offset(2.0, 2.0),
            ),
          ]),
    );
  }

  Widget _contacts() {
    return Container(
      child: Row(
        children: [
          Text(
            '斯芬迪斯',
            // fontSize: 12
          ),
          Text(
            '138788888888',
            // fontSize: 12
          ),
        ],
      ),
    );
  }

  Widget _address() {
    return Container(
      child: Row(
        children: [
          Container(
              child: Image.asset('assets/images/xfs_order_location.png',
                  width: 10, height: 10)),
          Text(
            '北京海淀五环外001',
            // fontSize: 12,
          )
        ],
      ),
    );
  }
}

/// ====================== 倒计时控件 ======================

class XFSOrderCountDownWidget extends StatefulWidget {
  final int downTime;

  const XFSOrderCountDownWidget({Key key, this.downTime}) : super(key: key);

  @override
  _XFSOrderCountDownWidgetState createState() =>
      _XFSOrderCountDownWidgetState();
}

class _XFSOrderCountDownWidgetState extends State<XFSOrderCountDownWidget> {
  Timer _countdownTimer;
  int _day, _hour, _minute, _second;

  @override
  void initState() {
    super.initState();

    secondsToDayHourMinute(widget.downTime);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timeFunc(widget.downTime);
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_countdownTimer != null) {
      _countdownTimer?.cancel();
      _countdownTimer = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildView(context);
  }

  Widget buildView(BuildContext context) {
    return Container(
      child: Text(
        '${timeString(_day)}天${timeString(_hour)}小时${timeString(_minute)}分${timeString(_second)}秒',
        textAlign: TextAlign.start,
      ),
    );
  }

  void secondsToDayHourMinute(int seconds) {
    _day = (seconds ~/ (3600 * 24));
    _hour = (seconds ~/ 3600) % 24;
    _minute = seconds % 3600 ~/ 60;
    _second = seconds % 60;
  }

  void _timeFunc(int downTime) {
    _countdownTimer = new Timer.periodic(new Duration(seconds: 1), (timer) {
      setState(() {
        if (downTime > 0) {
          downTime--;
          secondsToDayHourMinute(downTime);
          setState(() {});
        } else {
          _countdownTimer.cancel();
          _countdownTimer = null;
        }
      });
    });
  }

  String timeString(int time) {
    if (time < 10) {
      return '${time.toString()}';
    }
    return '${time.toString()}';
  }
}
