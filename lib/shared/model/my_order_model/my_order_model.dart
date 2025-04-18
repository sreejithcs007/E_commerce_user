class MyOrderModel {
  String orderId;
  String itemName;
  String itemOrderId;
  double itemRate;
  double itemQty;
  int paymentType;
  String deliveryStatus;
  double createdAt;

  MyOrderModel(
      {required this.orderId,
      required this.itemName,
      required this.itemRate,
      required this.itemQty,
      required this.paymentType,
      required this.createdAt,
      required this.deliveryStatus,
      required this.itemOrderId});
}
