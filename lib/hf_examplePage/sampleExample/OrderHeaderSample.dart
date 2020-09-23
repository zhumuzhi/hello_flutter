import 'package:flutter/material.dart';
import 'package:hello_flutter/Support/utils/screen_utils.dart';

class OrderHeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('订单详情')),
      body: ListView(children: [
        XFSOrderDetailsTitleItem(),
      ]),
    );
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
