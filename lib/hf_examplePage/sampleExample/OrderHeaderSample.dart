import 'package:flutter/material.dart';
import 'package:hello_flutter/Support/utils/screen_utils.dart';
import 'dart:math';
import 'dart:async';

class OrderHeaderPage extends StatefulWidget {
  @override
  _OrderHeaderPageState createState() => _OrderHeaderPageState();
}

class _OrderHeaderPageState extends State<OrderHeaderPage> {

  String titleStr;
  var baseCount;


  @override
  Widget build(BuildContext context) {

    // String countStr = countMethod(1601200017000, 1600935348514);
    // print('倒计时计算为：$countStr');

    const period = const Duration(seconds: 1);

    Timer.periodic(period, (timer) {

      String timeStr = countStrMethod(baseCount);

      //到时回调
      // print('count：$baseCount');
      // print('timeStr：$timeStr');

      titleStr = timeStr;

      setState(() {
        countDownLabel(titleStr);
      });

      baseCount--;
      if (baseCount <= 0) {
        //取消定时器，避免无限回调
        timer.cancel();
        timer = null;
        print('倒计时结束，计时器销毁');
      }

    });

    return Scaffold(
      appBar: AppBar(title: Text('订单详情')),
      body: ListView(children: [
        XFSOrderDetailsTitleItem(),
        countDownLabel(titleStr)
      ]),
    );

  }


  Widget countDownLabel (String showStr) {
    return Container(
      color: Colors.green,
      height: 100,
      child:Text('$showStr') ,
    );
  }


  @override
  void initState() {
    // baseCount = (1601200017000 - 1600935348514) / 1000;
    baseCount = (1601200059000 - 1601200017000) / 1000;
    print('初始化倒计时赋值:$baseCount');
    super.initState();
  }

  


}


countStrMethod (double secondtime){
  double intDiff =  secondtime;
  var day = 0, hour = 0, minute =0, second = 0;
  String timeStr;
  if (intDiff > 0){
    day = (intDiff/ (60*60*24)).floor();
    hour = ((intDiff / (60 * 60)) - (day * 24)).floor();
    minute = ((intDiff / 60) - (day * 24 * 60) - (hour * 60)).floor();
    second = ((intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60)).floor();
  }
  if (hour <= 9) hour = 0 + hour;
  if (minute <= 9) minute = 0 + minute;
  if (second <= 9) second = 0 + second;
  if (day > 0) {
    if (day < 10) {
      timeStr = '0' + '$day' + '天' +  '$hour' + '小时' + '$minute' + '分' + '$second' + '秒';
    }
  }else {
    timeStr = '$hour' + '小时' + '$minute' + '分' + '$second' + '秒';
  }
  // intDiff--;
  return timeStr;
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
    return Column(
      children: [_orderTitle(), _countTime(), XFSOrderDetailsOrderInfoItem()],
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
              color:Colors.grey,
              offset: Offset(2.0,2.0),
            ),
          ]
        ),
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
