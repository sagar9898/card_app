class Demo {
  String productName;
  String time;
  String paymentMethod;
  bool status;
  String price;
  String picture;

  Demo(
      {this.productName,
        this.time,
        this.paymentMethod,
        this.status,
        this.price,
        this.picture});
  Demo.fromJson(Map<String, dynamic> json) {
    productName = json['Product_name'];
    time = json['time'];
    paymentMethod = json['payment_method'];
    status = json['status'];
    price = json['price'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Product_name'] = this.productName;
    data['time'] = this.time;
    data['payment_method'] = this.paymentMethod;
    data['status'] = this.status;
    data['price'] = this.price;
    data['picture'] = this.picture;
    return data;
  }
}