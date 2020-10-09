
class XFSGoodsModel {
  String able_logistice;
  num activity_id;
  String activity_rule;
  num activity_type;
  num add_points;
  num arrival_cycle;
  /// 品牌id
  num brand_id;
  /// 品牌名称
  String brand_name;
  /// 购买数量
  num buyyer_count;
  num can_maintain_count;
  num can_returned_count;
  num category_code;
  num category_discount_rate;
  num category_three_id;
  String color;
  num cost_price;
  num coupon_value;
  String customer_name;
  num delivery_count;
  num distribution_price;
  num fare;
  num have_returned_count;
  num id;
  num init_sale_price;
  num is_temp_sku;
  bool item_maintain_flag;
  bool item_return_flag;
  num maintaining_count;
  num member_id;
  num merchant_id;
  num number_decimal;
  num occupy_store;
  num occupy_virtual_store;
  String order_id;
  num original_price;
  num price;
  String product_code;
  num product_id;
  String product_name;
  String product_pic;
  num promotion_value;
  num receive_count;
  /// 危险品
  num restricted;
  num retail_price;
  String revenue_code;
  String revenue_name;
  num sale_price;
  num sale_type;
  num shop_id;
  num shop_occupy_store;
  String sku_code;
  num sku_height;
  num sku_id;
  String sku_info;
  num sku_long;
  num sku_volume;
  num sku_weight;
  num sku_width;
  num specify_price;
  num spu_id;
  String unable_logistice;
  String unit_name;
  num used_points;
  num warehouse_id;

  XFSGoodsModel(this.able_logistice, this.activity_id, this.activity_rule,
      this.activity_type, this.add_points, this.arrival_cycle, this.brand_id,
      this.brand_name, this.buyyer_count, this.can_maintain_count,
      this.can_returned_count, this.category_code, this.category_discount_rate,
      this.category_three_id, this.color, this.cost_price, this.coupon_value,
      this.customer_name, this.delivery_count, this.distribution_price,
      this.fare, this.have_returned_count, this.id, this.init_sale_price,
      this.is_temp_sku, this.item_maintain_flag, this.item_return_flag,
      this.maintaining_count, this.member_id, this.merchant_id,
      this.number_decimal, this.occupy_store, this.occupy_virtual_store,
      this.order_id, this.original_price, this.price, this.product_code,
      this.product_id, this.product_name, this.product_pic,
      this.promotion_value, this.receive_count, this.restricted,
      this.retail_price, this.revenue_code, this.revenue_name, this.sale_price,
      this.sale_type, this.shop_id, this.shop_occupy_store, this.sku_code,
      this.sku_height, this.sku_id, this.sku_info, this.sku_long,
      this.sku_volume, this.sku_weight, this.sku_width, this.specify_price,
      this.spu_id, this.unable_logistice, this.unit_name, this.used_points,
      this.warehouse_id);

  XFSGoodsModel.fromJson(Map<String, dynamic> json){

    if (json == null){
      return;
    }
    able_logistice = json['able_logistice'];
    activity_id = json['activity_id'];
    activity_rule = json['activity_rule'];
    activity_type = json['activity_type'];
    add_points = json['add_points'];
    arrival_cycle = json['arrival_cycle'];

    brand_id = json['brand_id'];
    /// 品牌名称activity_id = json['activity_id'];
    String ;brand_name = json['brand_name'];
    buyyer_count = json['buyyer_count'];
    can_maintain_count = json['can_maintain_count'];
    can_returned_count = json['can_returned_count'];
    category_code = json['category_code'];
    category_discount_rate = json['category_discount_rate'];
    category_three_id = json['category_three_id'];
    color = json['color'];
    cost_price = json['cost_price'];
    coupon_value = json['coupon_value'];
    customer_name = json['customer_name'];
    delivery_count = json['delivery_count'];
    distribution_price = json['distribution_price'];
    fare = json['fare'];
    have_returned_count = json['have_returned_count'];
    id = json['id'];
    init_sale_price = json['init_sale_price'];
    is_temp_sku = json['is_temp_sku'];
    item_maintain_flag = json['item_maintain_flag'];
    item_return_flag = json['item_return_flag'];
    maintaining_count = json['maintaining_count'];
    member_id = json['member_id'];
    merchant_id = json['merchant_id'];
    number_decimal = json['number_decimal'];
    occupy_store = json['occupy_store'];
    occupy_virtual_store = json['occupy_virtual_store'];
    order_id = json['order_id'];
    original_price = json['original_price'];
    price = json['price'];
    product_code = json['product_code'];
    product_id = json['product_id'];
    product_name = json['product_name'];
    product_pic = json['product_pic'];
    promotion_value = json['promotion_value'];
    receive_count = json['receive_count'];
    restricted = json['restricted'];
    retail_price = json['retail_price'];
    revenue_code = json['revenue_code'];
    revenue_name = json['revenue_name'];
    sale_price = json['sale_price'];
    sale_type = json['sale_type'];
    shop_id = json['shop_id'];
    shop_occupy_store = json['shop_occupy_store'];
    sku_code = json['sku_code'];
    sku_height = json['sku_height'];
    sku_id = json['sku_id'];
    sku_info = json['sku_info'];
    sku_long = json['sku_long'];
    sku_volume = json['sku_volume'];
    sku_weight = json['sku_weight'];
    sku_width = json['sku_width'];
    specify_price = json['specify_price'];
    spu_id = json['spu_id'];
    unable_logistice = json['unable_logistice'];
    unit_name = json['unit_name'];
    used_points = json['used_points'];
    warehouse_id = json['warehouse_id'];
  }


}