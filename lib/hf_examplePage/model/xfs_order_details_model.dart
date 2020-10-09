import 'package:hello_flutter/hf_examplePage/model/xfs_goods_model.dart';

///订单详情-数据模型
class XFSOrderDetailsModel {
  // 订单基础信息 对象
  XFSOrderBase orderBase;

  // orderExt 对象
  XFSOrderExt orderExt;

  // 订单发票 对象
  XFSOrderInvoice orderInvoice;

  // 收货人List 内部为XFSAddressReceiverModel
  List<XFSAddressReceiverModel> listAddressReceiver;

  // 商品对象列表
  List<XFSGoodsModel> listOrderItems;

  // 普通商品对象列表
  List<XFSGoodsModel> normalPriceOrderItemsList;

  // 特殊商品对象列表
  List<XFSGoodsModel> specialPriceOrderItemsList;

  // 满减商品对象列表
  List<XFSGoodsModel> fullAmountReduceOrderItemsList;

  List<XFSGoodsModel> fullQuantityReduceOrderItemsList;

  // 订单商品是否包含危化品
  bool restricted_items_exist;

  // 订单优惠卷 对象
  XFSOrderCoupon orderCoupon;

  // 订单备注
  List <XFSOrderRemark> listOrderRemark;

  // listOrderVerifyRecord List
  List listOrderVerifyRecord;

  dynamic orderRemark;
  dynamic comfirmRemark;

  // 订单取消 对象
  dynamic orderCancle;
  dynamic listOrderRefund;
  dynamic orderRefund;
  dynamic orderCancleApply;
  dynamic orderWarning;
  dynamic initPayWay;
  dynamic payWay;

  // 付款方式
  String settleWay;

  // 当前时间 (计算倒计时)
  num current_time;

  // 截止时间 (计算倒计时)
  num limit_time;

  // 预计到达时间
  String may_arrived;

  // 期望到达时间
  String wanna_arrived;

  // 总重量
  num total_weight;

  // 是否显示【再次购买】按钮 true 显示 false 不显示
  bool buy_again_button;

  // 是否显示【支付】按钮 true 显示 false 不显示
  bool paid_button_show;

  // 是否显示【取消申请】按钮 true 显示 false 不显示
  bool cancle_apply_show;

  // 是否显示【审批】按钮 true 显示 false 不显示
  bool audit_button_show;

  // 是否显示push(?)按钮 true 显示 false 不显示
  bool push_button_show;

  // 订单号（无值）
  dynamic order_id;

  dynamic settled_amount;
  num flag;
  dynamic orderAnomal;
  bool is_show;
  List authorityList;
  num is_rejected;
  dynamic is_returnable_freight;
  num limit_customer;
  num total_volume_f;
  dynamic total_volume;
  dynamic max_edge;
  dynamic inquiry_num;
  bool reject_orders_exist;

  // fullQuantityReduceOrderItemsMap 对象
  dynamic fullQuantityReduceOrderItemsMap;
  dynamic fullAmountReduceOrderItemsMap;
  num full_amount_reduce_value;
  num full_quantity_reduce_value;
  num total_promotion_value;

  // 期望时间
  String self_take_in_str;
  dynamic listOrderAttachment;
  List list_express_num;
  num order_class;
  dynamic push_message;

  XFSOrderDetailsModel(
      {this.order_id,
      this.orderBase,
      this.orderExt,
      this.cancle_apply_show,
      this.audit_button_show,
      this.paid_button_show,
      this.push_button_show,
      this.buy_again_button,
      this.authorityList,
      this.comfirmRemark,
      this.current_time,
      this.flag,
      this.fullAmountReduceOrderItemsList,
      this.fullAmountReduceOrderItemsMap,
      this.fullQuantityReduceOrderItemsList,
      this.fullQuantityReduceOrderItemsMap,
      this.full_amount_reduce_value,
      this.full_quantity_reduce_value,
      this.initPayWay,
      this.inquiry_num,
      this.is_rejected,
      this.is_returnable_freight,
      this.is_show,
      this.limit_customer,
      this.limit_time,
      this.listAddressReceiver,
      this.listOrderAttachment,
      this.listOrderItems,
      this.listOrderRefund,
      this.listOrderRemark,
      this.listOrderVerifyRecord,
      this.list_express_num,
      this.max_edge,
      this.may_arrived,
      this.normalPriceOrderItemsList,
      this.orderAnomal,
      this.orderCancle,
      this.orderCancleApply,
      this.orderCoupon,
      this.orderInvoice,
      this.orderRefund,
      this.orderRemark,
      this.orderWarning,
      this.order_class,
      this.payWay,
      this.push_message,
      this.reject_orders_exist,
      this.restricted_items_exist,
      this.self_take_in_str,
      this.settleWay,
      this.settled_amount,
      this.specialPriceOrderItemsList,
      this.total_promotion_value,
      this.total_volume,
      this.total_volume_f,
      this.total_weight,
      this.wanna_arrived});

  XFSOrderDetailsModel.fromJson(Map<dynamic, dynamic> json) {
    orderBase = json['orderBase'] != null
        ? XFSOrderBase.fromJson(json['orderBase'])
        : null;

    orderExt = json['orderExt'] != null
        ? XFSOrderExt.fromJson(json['orderExt'])
        : null;

    orderInvoice = json['orderInvoice'] != null
        ? XFSOrderInvoice.fromJson(json['orderInvoice'])
        : null;

    listAddressReceiver = json['listAddressReceiver'] != null
        ? (json['listAddressReceiver'] as List)
            .map((i) => XFSAddressReceiverModel.fromJson(i))
            .toList()
        : null;

    // listOrderItems = json['listOrderItems'] != null ? (json['listOrderItems'] as List).map((i) => XFSGoodsModel.fromJson(i)).toList() : null;

    if (json['listOrderItems'] != null) {
      listOrderItems = List();
      json['listOrderItems'].forEach((value) {
        listOrderItems.add(XFSGoodsModel.fromJson(value));
      });
    }

    normalPriceOrderItemsList = json['normalPriceOrderItemsList'] != null
        ? (json['normalPriceOrderItemsList'] as List)
            .map((i) => XFSGoodsModel.fromJson(i))
            .toList()
        : null;

    fullAmountReduceOrderItemsList =
        json['fullAmountReduceOrderItemsList'] != null
            ? (json['fullAmountReduceOrderItemsList'] as List)
                .map((i) => XFSGoodsModel.fromJson(i))
                .toList()
            : null;

    fullQuantityReduceOrderItemsList =
        json['fullQuantityReduceOrderItemsList'] != null
            ? (json['fullQuantityReduceOrderItemsList'] as List)
                .map((i) => XFSGoodsModel.fromJson(i))
                .toList()
            : null;

    specialPriceOrderItemsList = json['specialPriceOrderItemsList'] != null
        ? (json['specialPriceOrderItemsList'] as List)
            .map((i) => XFSGoodsModel.fromJson(i))
            .toList()
        : null;

    listOrderRemark = json['listOrderRemark'] != null
        ? (json['listOrderRemark'] as List)
            .map((i) => XFSOrderRemark.fromJson(i))
            .toList()
        : null;

    orderCoupon = json['orderCoupon'] != null
        ? XFSOrderCoupon.fromJson(json['orderCoupon'])
        : null;

    // listOrderVerifyRecord = json['listOrderVerifyRecord'] != null ? (json['listOrderVerifyRecord'] as List).map((i) => OrderVerifyRecord.fromJson(i)).toList() : null,
    // fullAmountReduceOrderItemsMap = json['fullAmountReduceOrderItemsMap'] != null ? FullAmountReduceOrderItemsMap.fromJson(json['fullAmountReduceOrderItemsMap']) : null,
    // fullQuantityReduceOrderItemsMap: json['fullQuantityReduceOrderItemsMap'] != null ? FullQuantityReduceOrderItemsMap.fromJson(json['fullQuantityReduceOrderItemsMap']) : null,

    buy_again_button = json['buy_again_button'];
    cancle_apply_show = json['cancle_apply_show'];
    push_button_show = json['push_button_show'] ?? false;
    paid_button_show = json['paid_button_show'];
    audit_button_show = json['audit_button_show'];

    authorityList = json['authorityList'] != null
        ? new List<num>.from(json['authorityList'])
        : null;
    current_time = json['current_time'];
    flag = json['flag'];
    full_amount_reduce_value = json['full_amount_reduce_value'];
    full_quantity_reduce_value = json['full_quantity_reduce_value'];
    is_rejected = json['is_rejected'];
    is_show = json['is_show'];
    limit_customer = json['limit_customer'];
    limit_time = json['limit_time'];
    may_arrived = json['may_arrived'];
    order_class = json['order_class'];
    reject_orders_exist = json['reject_orders_exist'];
    restricted_items_exist = json['restricted_items_exist'];
    self_take_in_str = json['self_take_in_str'];
    settleWay = json['settleWay'];
    total_promotion_value = json['total_promotion_value'];
    total_volume_f = json['total_volume_f'];
    total_weight = json['total_weight'];
    wanna_arrived = json['wanna_arrived'];

    // order_id = json['order_id'] != null ? Object.fromJson(json['order_id']) : null,
    // list_express_num = json['list_express_num'] != null ? (json['list_express_num'] as List).map((i) => Object.fromJson(i)).toList() : null,

    // total_volume = json['total_volume'] != null ? Object.fromJson(json['total_volume']) : null,

    // this.comfirmRemark= json['comfirmRemark'] != null ? Object.fromJson(json['comfirmRemark']) : null,
    // initPayWay = json['initPayWay'] != null ? Object.fromJson(json['initPayWay']) : null,
    // inquiry_num = json['inquiry_num'] != null ? Object.fromJson(json['inquiry_num']) : null,
    // this.is_returnable_freight = json['is_returnable_freight'] != null ? Object.fromJson(json['is_returnable_freight']) : null,
    // listOrderAttachment = json['listOrderAttachment'] != null ? Object.fromJson(json['listOrderAttachment']) : null,
    // listOrderRefund = json['listOrderRefund'] != null ? Object.fromJson(json['listOrderRefund']) : null,

    // max_edge = json['max_edge'] != null ? Object.fromJson(json['max_edge']) : null,
    // orderAnomal = json['orderAnomal'] != null ? Object.fromJson(json['orderAnomal']) : null,
    // orderCancle = json['orderCancle'] != null ? Object.fromJson(json['orderCancle']) : null,
    // orderCancleApply = json['orderCancleApply'] != null ? Object.fromJson(json['orderCancleApply']) : null,

    // orderRefund = json['orderRefund'] != null ? Object.fromJson(json['orderRefund']) : null,
    // orderRemark = json['orderRemark'] != null ? Object.fromJson(json['orderRemark']) : null,
    // orderWarning = json['orderWarning'] != null ? Object.fromJson(json['orderWarning']) : null,
    // payWay = json['payWay'] != null ? Object.fromJson(json['payWay']) : null,
    // push_message = json['push_message'] != null ? Object.fromJson(json['push_message']) : null,
    // settled_amount = json['settled_amount'] != null ? Object.fromJson(json['settled_amount']) : null,
  }
}

/// XFSOrderBaseModel
class XFSOrderBase {
  // 订单状态
  num order_status;

  // 订单号
  String order_id;

  // 订单创建时间
  String created_at;

  // 支付方式
  num paid_type;

  // 最终支付方式
  String final_paid_type;

  // 最终支付金额
  num final_total_amount;

  // 结算金额
  num paid_amount;

  // 汇款信息Id
  num paid_id;

  // 物流费用
  num shipping_fee;

  num make_invoice;
  num init_shipping_fee;

  num order_split_status;

  num quality_file_required;
  num separate_shipping_fee;

  num used_coupon;
  num used_total_points;

  String parent_order_id;
  String sub_order_created_at;

  num anomal_check;
  num change_price;
  String customer_code;
  String customer_id;
  String customer_name;
  String customer_name_alias;
  num customer_verify;
  num customer_verify_status;
  num delete_status;
  num id;
  String login_account;
  num member_id;
  num order_number;
  num order_role;
  num parent_warehouse_id;
  String role_id;
  String role_name;
  num shop_id;
  num warehouse_id;

  XFSOrderBase(
      {this.order_status,
      this.anomal_check,
      this.change_price,
      this.created_at,
      this.customer_code,
      this.customer_id,
      this.customer_name,
      this.customer_name_alias,
      this.customer_verify,
      this.customer_verify_status,
      this.delete_status,
      this.final_paid_type,
      this.final_total_amount,
      this.id,
      this.init_shipping_fee,
      this.login_account,
      this.make_invoice,
      this.member_id,
      this.order_id,
      this.order_number,
      this.order_role,
      this.order_split_status,
      this.paid_amount,
      this.paid_id,
      this.paid_type,
      this.parent_order_id,
      this.parent_warehouse_id,
      this.quality_file_required,
      this.role_id,
      this.role_name,
      this.separate_shipping_fee,
      this.shipping_fee,
      this.shop_id,
      this.sub_order_created_at,
      this.used_coupon,
      this.used_total_points,
      this.warehouse_id});

  factory XFSOrderBase.fromJson(Map<String, dynamic> json) {
    return XFSOrderBase(
      anomal_check: json['anomal_check'],
      change_price: json['change_price'],
      created_at: json['created_at'],
      customer_code: json['customer_code'],
      customer_id: json['customer_id'],
      customer_name: json['customer_name'],
      customer_name_alias: json['customer_name_alias'],
      customer_verify: json['customer_verify'],
      customer_verify_status: json['customer_verify_status'],
      delete_status: json['delete_status'],
      final_paid_type: json['final_paid_type'] ?? '',
      final_total_amount: json['final_total_amount'],
      id: json['id'],
      init_shipping_fee: json['init_shipping_fee'],
      login_account: json['login_account'],
      make_invoice: json['make_invoice'],
      member_id: json['member_id'],
      order_id: json['order_id'],
      order_number: json['order_number'],
      order_role: json['order_role'],
      order_split_status: json['order_split_status'],
      order_status: json['order_status'],
      paid_amount: json['paid_amount'],
      paid_id: json['paid_id'],
      paid_type: json['paid_type'],
      parent_order_id: json['parent_order_id'],
      parent_warehouse_id: json['parent_warehouse_id'],
      quality_file_required: json['quality_file_required'],
      role_id: json['role_id'],
      role_name: json['role_name'],
      separate_shipping_fee: json['separate_shipping_fee'],
      shipping_fee: json['shipping_fee'],
      shop_id: json['shop_id'],
      sub_order_created_at: json['sub_order_created_at'],
      used_coupon: json['used_coupon'],
      used_total_points: json['used_total_points'],
      warehouse_id: json['warehouse_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['anomal_check'] = this.anomal_check;
    data['change_price'] = this.change_price;
    data['created_at'] = this.created_at;
    data['customer_code'] = this.customer_code;
    data['customer_id'] = this.customer_id;
    data['customer_name'] = this.customer_name;
    data['customer_name_alias'] = this.customer_name_alias;
    data['customer_verify'] = this.customer_verify;
    data['customer_verify_status'] = this.customer_verify_status;
    data['delete_status'] = this.delete_status;
    data['final_total_amount'] = this.final_total_amount;
    data['id'] = this.id;
    data['init_shipping_fee'] = this.init_shipping_fee;
    data['login_account'] = this.login_account;
    data['make_invoice'] = this.make_invoice;
    data['member_id'] = this.member_id;
    data['order_id'] = this.order_id;
    data['order_number'] = this.order_number;
    data['order_role'] = this.order_role;
    data['order_split_status'] = this.order_split_status;
    data['order_status'] = this.order_status;
    data['paid_amount'] = this.paid_amount;
    data['paid_id'] = this.paid_id;
    data['paid_type'] = this.paid_type;
    data['parent_order_id'] = this.parent_order_id;
    data['parent_warehouse_id'] = this.parent_warehouse_id;
    data['quality_file_required'] = this.quality_file_required;
    data['role_id'] = this.role_id;
    data['role_name'] = this.role_name;
    data['separate_shipping_fee'] = this.separate_shipping_fee;
    data['shipping_fee'] = this.shipping_fee;
    data['shop_id'] = this.shop_id;
    data['sub_order_created_at'] = this.sub_order_created_at;
    data['used_coupon'] = this.used_coupon;
    data['used_total_points'] = this.used_total_points;
    data['warehouse_id'] = this.warehouse_id;
    if (this.final_paid_type != null) {
      data['final_paid_type'] = this.final_paid_type;
    }
    return data;
  }
}

/// XFSOrderExt
class XFSOrderExt {
  // 收货人-省名称
  String receiver_province_name;

  // 收货人-城市名称
  String receiver_city_name;

  // 收货人-区域名称
  String receiver_area_name;

  // 收货人-街名称
  String receiver_town_name;

  // 收货人-详细地址
  String receiver_detail_address;

  // 资质文件份数 （>4 = 4）
  num file_copies;

  // 是否带红章 10：带红章 其他：不带红章
  num original_file;

  // 预计时间
  num modify_may_arrived;

  // 配送方式 10:快递 20:快运 21:快运-站点自提 30:专车包车 40:鑫方盛物流(data.restricted_items_exist=true:物流配送) 50:上门自提
  num sent_type;

  // 最终配送方式 10:快递 20:快运 21:快运-站点自提 30:专车包车 40:鑫方盛物流(data.restricted_items_exist=true:物流配送) 50:上门自提
  num final_sent_type;

  String audit_pass_at;
  num belong_groupId;
  String branch_contacts;
  String branch_department;
  String branch_name;
  String branch_phone;
  String cancel_at;
  String create_at;
  String customer_email;
  String customer_landline_phone;
  num customer_type;
  String deliver_name;
  String deliver_phone;
  String delivery_at;
  String distribute_at;
  String driver_name;
  String driver_phone;
  String express_company;
  String express_num;

  num ip;
  String lat;
  num limit_line;
  num limit_time;
  String lng;
  String may_arrived_begin;
  String may_arrived_in;
  num member_organization_id;
  String member_organization_name;

  num order_big_type;
  String order_id;
  String order_success_at;
  num order_type;
  String organization_name;

  String paid_at;
  num platform;
  String predict_delivery_at;
  num prescription;
  String received_at;
  String receiver_area;
  String receiver_city;
  String receiver_detail_address_alias;
  String receiver_province;
  String receiver_town;
  num rollback_tag;
  num sales_manager_id;
  String sales_manager_name;
  String sales_manager_phone;
  num secondary_sent_type;
  String self_take_in;
  String self_take_phone;
  String self_take_shop;
  String self_take_warehouse;

  num ship_add_id;
  String ship_at;
  num shop_customer_type;
  num source;
  num temp_address;
  String trade_closed_at;
  String trade_finished_at;
  String verify_code;
  num version_code;
  String wanna_arrived_begin;
  String wanna_arrived_in;
  num wanna_arrived_time_by;

  XFSOrderExt(
      {this.audit_pass_at,
      this.belong_groupId,
      this.branch_contacts,
      this.branch_department,
      this.branch_name,
      this.branch_phone,
      this.cancel_at,
      this.create_at,
      this.customer_email,
      this.customer_landline_phone,
      this.customer_type,
      this.deliver_name,
      this.deliver_phone,
      this.delivery_at,
      this.distribute_at,
      this.driver_name,
      this.driver_phone,
      this.express_company,
      this.express_num,
      this.file_copies,
      this.final_sent_type,
      this.ip,
      this.lat,
      this.limit_line,
      this.limit_time,
      this.lng,
      this.may_arrived_begin,
      this.may_arrived_in,
      this.member_organization_id,
      this.member_organization_name,
      this.modify_may_arrived,
      this.order_big_type,
      this.order_id,
      this.order_success_at,
      this.order_type,
      this.organization_name,
      this.original_file,
      this.paid_at,
      this.platform,
      this.predict_delivery_at,
      this.prescription,
      this.received_at,
      this.receiver_area,
      this.receiver_area_name,
      this.receiver_city,
      this.receiver_city_name,
      this.receiver_detail_address,
      this.receiver_detail_address_alias,
      this.receiver_province,
      this.receiver_province_name,
      this.receiver_town,
      this.receiver_town_name,
      this.rollback_tag,
      this.sales_manager_id,
      this.sales_manager_name,
      this.sales_manager_phone,
      this.secondary_sent_type,
      this.self_take_in,
      this.self_take_phone,
      this.self_take_shop,
      this.self_take_warehouse,
      this.sent_type,
      this.ship_add_id,
      this.ship_at,
      this.shop_customer_type,
      this.source,
      this.temp_address,
      this.trade_closed_at,
      this.trade_finished_at,
      this.verify_code,
      this.version_code,
      this.wanna_arrived_begin,
      this.wanna_arrived_in,
      this.wanna_arrived_time_by});

  factory XFSOrderExt.fromJson(Map<String, dynamic> json) {
    return XFSOrderExt(
      audit_pass_at: json['audit_pass_at'],
      belong_groupId: json['belong_groupId'],
      branch_contacts: json['branch_contacts'],
      branch_department: json['branch_department'],
      branch_name: json['branch_name'],
      branch_phone: json['branch_phone'],
      cancel_at: json['cancel_at'],
      create_at: json['create_at'],
      customer_email: json['customer_email'],
      customer_landline_phone: json['customer_landline_phone'],
      customer_type: json['customer_type'],
      deliver_name: json['deliver_name'] ?? '',
      deliver_phone: json['deliver_phone'] ?? '',
      delivery_at: json['delivery_at'],
      distribute_at: json['distribute_at'],
      driver_name: json['driver_name'] ?? '',
      driver_phone: json['driver_phone'] ?? '',
      express_company: json['express_company'],
      express_num: json['express_num'],
      file_copies: json['file_copies'],
      final_sent_type: json['final_sent_type'],
      ip: json['ip'],
      lat: json['lat'],
      limit_line: json['limit_line'],
      limit_time: json['limit_time'],
      lng: json['lng'],
      may_arrived_begin: json['may_arrived_begin'],
      may_arrived_in: json['may_arrived_in'],
      member_organization_id: json['member_organization_id'],
      member_organization_name: json['member_organization_name'],
      modify_may_arrived: json['modify_may_arrived'],
      order_big_type: json['order_big_type'],
      order_id: json['order_id'],
      order_success_at: json['order_success_at'],
      order_type: json['order_type'],
      organization_name: json['organization_name'],
      original_file: json['original_file'],
      paid_at: json['paid_at'],
      platform: json['platform'],
      predict_delivery_at: json['predict_delivery_at'],
      prescription: json['prescription'],
      received_at: json['received_at'],
      receiver_area: json['receiver_area'],
      receiver_area_name: json['receiver_area_name'],
      receiver_city: json['receiver_city'],
      receiver_city_name: json['receiver_city_name'],
      receiver_detail_address: json['receiver_detail_address'],
      receiver_detail_address_alias: json['receiver_detail_address_alias'],
      receiver_province: json['receiver_province'],
      receiver_province_name: json['receiver_province_name'],
      receiver_town: json['receiver_town'],
      receiver_town_name: json['receiver_town_name'],
      rollback_tag: json['rollback_tag'],
      sales_manager_id: json['sales_manager_id'],
      sales_manager_name: json['sales_manager_name'],
      sales_manager_phone: json['sales_manager_phone'],
      secondary_sent_type: json['secondary_sent_type'],
      self_take_in: json['self_take_in'],
      self_take_phone: json['self_take_phone'],
      self_take_shop: json['self_take_shop'],
      self_take_warehouse: json['self_take_warehouse'],
      sent_type: json['sent_type'],
      ship_add_id: json['ship_add_id'],
      ship_at: json['ship_at'],
      shop_customer_type: json['shop_customer_type'],
      source: json['source'],
      temp_address: json['temp_address'],
      trade_closed_at: json['trade_closed_at'],
      trade_finished_at: json['trade_finished_at'],
      verify_code: json['verify_code'],
      version_code: json['version_code'],
      wanna_arrived_begin: json['wanna_arrived_begin'],
      wanna_arrived_in: json['wanna_arrived_in'],
      wanna_arrived_time_by: json['wanna_arrived_time_by'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['audit_pass_at'] = this.audit_pass_at;
    data['belong_groupId'] = this.belong_groupId;
    data['branch_contacts'] = this.branch_contacts;
    data['branch_department'] = this.branch_department;
    data['branch_name'] = this.branch_name;
    data['branch_phone'] = this.branch_phone;
    data['cancel_at'] = this.cancel_at;
    data['create_at'] = this.create_at;
    data['customer_email'] = this.customer_email;
    data['customer_landline_phone'] = this.customer_landline_phone;
    data['customer_type'] = this.customer_type;
    data['delivery_at'] = this.delivery_at;
    data['distribute_at'] = this.distribute_at;
    data['express_company'] = this.express_company;
    data['express_num'] = this.express_num;
    data['file_copies'] = this.file_copies;
    data['final_sent_type'] = this.final_sent_type;
    data['ip'] = this.ip;
    data['lat'] = this.lat;
    data['limit_line'] = this.limit_line;
    data['limit_time'] = this.limit_time;
    data['lng'] = this.lng;
    data['may_arrived_begin'] = this.may_arrived_begin;
    data['may_arrived_in'] = this.may_arrived_in;
    data['member_organization_id'] = this.member_organization_id;
    data['member_organization_name'] = this.member_organization_name;
    data['modify_may_arrived'] = this.modify_may_arrived;
    data['order_big_type'] = this.order_big_type;
    data['order_id'] = this.order_id;
    data['order_success_at'] = this.order_success_at;
    data['order_type'] = this.order_type;
    data['organization_name'] = this.organization_name;
    data['original_file'] = this.original_file;
    data['paid_at'] = this.paid_at;
    data['platform'] = this.platform;
    data['predict_delivery_at'] = this.predict_delivery_at;
    data['prescription'] = this.prescription;
    data['received_at'] = this.received_at;
    data['receiver_area'] = this.receiver_area;
    data['receiver_area_name'] = this.receiver_area_name;
    data['receiver_city'] = this.receiver_city;
    data['receiver_city_name'] = this.receiver_city_name;
    data['receiver_detail_address'] = this.receiver_detail_address;
    data['receiver_detail_address_alias'] = this.receiver_detail_address_alias;
    data['receiver_province'] = this.receiver_province;
    data['receiver_province_name'] = this.receiver_province_name;
    data['receiver_town'] = this.receiver_town;
    data['receiver_town_name'] = this.receiver_town_name;
    data['rollback_tag'] = this.rollback_tag;
    data['sales_manager_id'] = this.sales_manager_id;
    data['sales_manager_name'] = this.sales_manager_name;
    data['sales_manager_phone'] = this.sales_manager_phone;
    data['secondary_sent_type'] = this.secondary_sent_type;
    data['self_take_in'] = this.self_take_in;
    data['self_take_phone'] = this.self_take_phone;
    data['self_take_shop'] = this.self_take_shop;
    data['self_take_warehouse'] = this.self_take_warehouse;
    data['sent_type'] = this.sent_type;
    data['ship_add_id'] = this.ship_add_id;
    data['ship_at'] = this.ship_at;
    data['shop_customer_type'] = this.shop_customer_type;
    data['source'] = this.source;
    data['temp_address'] = this.temp_address;
    data['trade_closed_at'] = this.trade_closed_at;
    data['trade_finished_at'] = this.trade_finished_at;
    data['verify_code'] = this.verify_code;
    data['version_code'] = this.version_code;
    data['wanna_arrived_begin'] = this.wanna_arrived_begin;
    data['wanna_arrived_in'] = this.wanna_arrived_in;
    data['wanna_arrived_time_by'] = this.wanna_arrived_time_by;
    if (this.deliver_name != null) {
      data['deliver_name'] = this.deliver_name;
    }
    if (this.deliver_phone != null) {
      data['deliver_phone'] = this.deliver_phone;
    }
    if (this.driver_name != null) {
      data['driver_name'] = this.driver_name;
    }
    if (this.driver_phone != null) {
      data['driver_phone'] = this.driver_phone;
    }
    return data;
  }
}

/// 订单详情 收货人Model
class XFSAddressReceiverModel {
  num address_id;
  num id;
  String mobile;
  String order_id;
  String receiver_name;

  XFSAddressReceiverModel(
      {this.address_id,
      this.id,
      this.mobile,
      this.order_id,
      this.receiver_name});

  factory XFSAddressReceiverModel.fromJson(Map<String, dynamic> json) {
    return XFSAddressReceiverModel(
      address_id: json['address_id'],
      id: json['id'],
      mobile: json['mobile'],
      order_id: json['order_id'],
      receiver_name: json['receiver_name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address_id'] = this.address_id;
    data['id'] = this.id;
    data['mobile'] = this.mobile;
    data['order_id'] = this.order_id;
    data['receiver_name'] = this.receiver_name;
    return data;
  }
}

/// 发票对象模型
class XFSOrderInvoice {
  // 是否开发票 10：已开 20：未开
  num invoice_sorce;

  // 发票类型 ：10：增值税专用发票 20：普通发票 30：不开发票
  num invoice_type;

  // 10|20|60：未开 30：部分开 其他：已开
  num invoice_status;

  // 注册地址
  String register_address;

  // 注册电话
  String register_phone;

  // 开户银行
  String open_bank;

  // 银行账户
  String bank_account;

  // 发票抬头
  String invoice_title;

  // 纳税人识别号
  String taxpayer_identify_num;

  // CRM开票客户ID
  String crm_invoice_id;

  String province;
  String province_name;
  String city;
  String city_name;
  String area;
  String area_name;
  String town;
  String town_name;
  String detail_address;

  String received_name;
  String received_phone;
  String logistics_company;
  String logistics_num;
  num operator_userid;
  String operator_username;
  String organization_name;
  String invoice_remark;
  num invoice_role;

  num belong_groupId;
  String order_id;
  String create_date;
  String update_date;
  num id;

  XFSOrderInvoice(
      {this.area,
      this.area_name,
      this.bank_account,
      this.belong_groupId,
      this.city,
      this.city_name,
      this.create_date,
      this.crm_invoice_id,
      this.detail_address,
      this.id,
      this.invoice_remark,
      this.invoice_role,
      this.invoice_sorce,
      this.invoice_status,
      this.invoice_title,
      this.invoice_type,
      this.logistics_company,
      this.logistics_num,
      this.open_bank,
      this.operator_userid,
      this.operator_username,
      this.order_id,
      this.organization_name,
      this.province,
      this.province_name,
      this.received_name,
      this.received_phone,
      this.register_address,
      this.register_phone,
      this.taxpayer_identify_num,
      this.town,
      this.town_name,
      this.update_date});

  factory XFSOrderInvoice.fromJson(Map<String, dynamic> json) {
    return XFSOrderInvoice(
      area: json['area'],
      area_name: json['area_name'],
      bank_account: json['bank_account'],
      belong_groupId: json['belong_groupId'],
      city: json['city'],
      city_name: json['city_name'],
      create_date: json['create_date'],
      crm_invoice_id: json['crm_invoice_id'],
      detail_address: json['detail_address'],
      id: json['id'],
      invoice_remark: json['invoice_remark'],
      invoice_role: json['invoice_role'],
      invoice_sorce: json['invoice_sorce'],
      invoice_status: json['invoice_status'],
      invoice_title: json['invoice_title'],
      invoice_type: json['invoice_type'],
      logistics_company: json['logistics_company'],
      logistics_num: json['logistics_num'],
      open_bank: json['open_bank'],
      operator_userid: json['operator_userid'],
      operator_username: json['operator_username'],
      order_id: json['order_id'],
      organization_name: json['organization_name'],
      province: json['province'],
      province_name: json['province_name'],
      received_name: json['received_name'],
      received_phone: json['received_phone'],
      register_address: json['register_address'],
      register_phone: json['register_phone'],
      taxpayer_identify_num: json['taxpayer_identify_num'],
      town: json['town'],
      town_name: json['town_name'],
      update_date: json['update_date'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['area'] = this.area;
    data['area_name'] = this.area_name;
    data['bank_account'] = this.bank_account;
    data['belong_groupId'] = this.belong_groupId;
    data['city'] = this.city;
    data['city_name'] = this.city_name;
    data['create_date'] = this.create_date;
    data['crm_invoice_id'] = this.crm_invoice_id;
    data['detail_address'] = this.detail_address;
    data['id'] = this.id;
    data['invoice_remark'] = this.invoice_remark;
    data['invoice_role'] = this.invoice_role;
    data['invoice_sorce'] = this.invoice_sorce;
    data['invoice_status'] = this.invoice_status;
    data['invoice_title'] = this.invoice_title;
    data['invoice_type'] = this.invoice_type;
    data['open_bank'] = this.open_bank;
    data['operator_userid'] = this.operator_userid;
    data['operator_username'] = this.operator_username;
    data['order_id'] = this.order_id;
    data['organization_name'] = this.organization_name;
    data['province'] = this.province;
    data['province_name'] = this.province_name;
    data['received_name'] = this.received_name;
    data['received_phone'] = this.received_phone;
    data['register_address'] = this.register_address;
    data['register_phone'] = this.register_phone;
    data['taxpayer_identify_num'] = this.taxpayer_identify_num;
    data['town'] = this.town;
    data['town_name'] = this.town_name;
    data['update_date'] = this.update_date;
    data['logistics_company'] = this.logistics_company;
    data['logistics_num'] = this.logistics_num;
    return data;
  }
}

/// 订单详情备注对象
class XFSOrderRemark {
  // 备注内容
  String remark;
  String bus_id;
  num bus_type;
  String created_at;
  num id;
  num operate_type;
  num operate_userid;
  String operate_username;
  num operator_role;
  String updated_at;

  XFSOrderRemark(
      {this.bus_id,
      this.bus_type,
      this.created_at,
      this.id,
      this.operate_type,
      this.operate_userid,
      this.operate_username,
      this.operator_role,
      this.remark,
      this.updated_at});

  factory XFSOrderRemark.fromJson(Map<String, dynamic> json) {
    return XFSOrderRemark(
      bus_id: json['bus_id'],
      bus_type: json['bus_type'],
      created_at: json['created_at'],
      id: json['id'],
      operate_type: json['operate_type'],
      operate_userid: json['operate_userid'],
      operate_username: json['operate_username'],
      operator_role: json['operator_role'],
      remark: json['remark'],
      updated_at: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bus_id'] = this.bus_id;
    data['bus_type'] = this.bus_type;
    data['created_at'] = this.created_at;
    data['id'] = this.id;
    data['operate_type'] = this.operate_type;
    data['operate_userid'] = this.operate_userid;
    data['operate_username'] = this.operate_username;
    data['operator_role'] = this.operator_role;
    data['remark'] = this.remark;
    data['updated_at'] = this.updated_at;
    return data;
  }
}

/// 订单详情优惠券对象
class XFSOrderCoupon {
  // 优惠券金额
  num coupon_value;
  // 优惠券real金额
  num coupon_real_value;
  // 优惠券Code
  String coupon_code;
  // 优惠券说明
  String coupon_desc;
  // 优惠券类型 10：
  num coupon_type;
  // 优惠券订单号
  String order_id;
  // 优惠券创建时间
  String created_time;
  // 优惠券使用条件
  num use_condition;

  num coupon_scope;

  XFSOrderCoupon(
      {this.coupon_code,
      this.coupon_desc,
      this.coupon_real_value,
      this.coupon_scope,
      this.coupon_type,
      this.coupon_value,
      this.created_time,
      this.order_id,
      this.use_condition});

  factory XFSOrderCoupon.fromJson(Map<String, dynamic> json) {
    return XFSOrderCoupon(
      coupon_code: json['coupon_code'],
      coupon_desc: json['coupon_desc'],
      coupon_real_value: json['coupon_real_value'],
      coupon_scope: json['coupon_scope'],
      coupon_type: json['coupon_type'],
      coupon_value: json['coupon_value'],
      created_time: json['created_time'],
      order_id: json['order_id'],
      use_condition: json['use_condition'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coupon_code'] = this.coupon_code;
    data['coupon_desc'] = this.coupon_desc;
    data['coupon_real_value'] = this.coupon_real_value;
    data['coupon_scope'] = this.coupon_scope;
    data['coupon_type'] = this.coupon_type;
    data['coupon_value'] = this.coupon_value;
    data['created_time'] = this.created_time;
    data['order_id'] = this.order_id;
    data['use_condition'] = this.use_condition;
    return data;
  }
}

/// 订单详情-请求Model
/// [orderId] 订单号 (订单列表传递)
/// [memberId] MemberId (公参)
class XFSRequestOrderDetailsModel {
  // 订单Id
  String orderId;

  XFSRequestOrderDetailsModel({
    this.orderId,
  });
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_id'] = this.orderId ?? '88118794254';

    /// 测试使用的公参假数据
    data["login_account"] = "wxvcqi978436";
    data["account_type"] = "20";
    data["version_code"] = "79";
    data["channel"] = "appstore";
    data["member_id"] = "159";
    data["device_id"] = "13f7836fde35c3e21bb274b21f1aee6d";
    data["sign"] = "17dc5c95bbbae6f62ed917993dec867f";
    data["token"] = "24639c6b71141b1fdc80b679e226c9c3";
    data["timestamp"] = "1602207349000";
    data["network"] = "WIFI";
    data["os_version"] = "13.7";
    data["accountType"] = "20";
    data["device_platform"] = "ios";
    data["memberId"] = "159";
    data["device_brand"] = "苹果";
    data["loginAccount"] = "wxvcqi978436";

    return data;
  }
}
