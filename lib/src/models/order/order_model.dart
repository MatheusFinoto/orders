class OrderModel {
  String? id;
  String? product;
  int? status;
  String? moment;

  OrderModel({this.id, this.product, this.status, this.moment});

  OrderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product = json['product'];
    status = json['status'];
    moment = json['moment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product'] = product;
    data['status'] = status;
    data['moment'] = moment;
    return data;
  }
}
