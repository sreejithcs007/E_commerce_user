// To parse this JSON data, do
//
//     final orderListModel = orderListModelFromJson(jsonString);

import 'dart:convert';

OrderListModel orderListModelFromJson(String str) => OrderListModel.fromJson(json.decode(str));

String orderListModelToJson(OrderListModel data) => json.encode(data.toJson());

class OrderListModel {
    List<Order>? orders;

    OrderListModel({
        this.orders,
    });

    factory OrderListModel.fromJson(Map<String, dynamic> json) => OrderListModel(
        orders: json["orders"] == null ? [] : List<Order>.from(json["orders"]!.map((x) => Order.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "orders": orders == null ? [] : List<dynamic>.from(orders!.map((x) => x.toJson())),
    };
}

class Order {
    int? id;
    int? userId;
    String? paymentMethod;
    String? status;
    dynamic canceledAt;
    dynamic deliveryImage;
    dynamic deliveryRemark;
    dynamic deliveredAt;
    String? totalAmount;
    dynamic transactionId;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deliveryBoyId;
    String? paymentStatus;
    String? deliveryStatus;
    dynamic collectedByDeliveryBoy;
    dynamic collectedAt;
    dynamic onGoingAt;
    List<Item>? items;
    User? user;

    Order({
        this.id,
        this.userId,
        this.paymentMethod,
        this.status,
        this.canceledAt,
        this.deliveryImage,
        this.deliveryRemark,
        this.deliveredAt,
        this.totalAmount,
        this.transactionId,
        this.createdAt,
        this.updatedAt,
        this.deliveryBoyId,
        this.paymentStatus,
        this.deliveryStatus,
        this.collectedByDeliveryBoy,
        this.collectedAt,
        this.onGoingAt,
        this.items,
        this.user,
    });

    factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        userId: json["user_id"],
        paymentMethod: json["payment_method"],
        status: json["status"],
        canceledAt: json["canceled_at"],
        deliveryImage: json["delivery_image"],
        deliveryRemark: json["delivery_remark"],
        deliveredAt: json["delivered_at"],
        totalAmount: json["total_amount"],
        transactionId: json["transaction_id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deliveryBoyId: json["delivery_boy_id"],
        paymentStatus: json["payment_status"],
        deliveryStatus: json["delivery_status"],
        collectedByDeliveryBoy: json["collected_by_delivery_boy"],
        collectedAt: json["collected_at"],
        onGoingAt: json["on_going_at"],
        items: json["items"] == null ? [] : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "payment_method": paymentMethod,
        "status": status,
        "canceled_at": canceledAt,
        "delivery_image": deliveryImage,
        "delivery_remark": deliveryRemark,
        "delivered_at": deliveredAt,
        "total_amount": totalAmount,
        "transaction_id": transactionId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "delivery_boy_id": deliveryBoyId,
        "payment_status": paymentStatus,
        "delivery_status": deliveryStatus,
        "collected_by_delivery_boy": collectedByDeliveryBoy,
        "collected_at": collectedAt,
        "on_going_at": onGoingAt,
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "user": user?.toJson(),
    };
}

class Item {
    int? id;
    int? orderId;
    int? productId;
    int? quantity;
    String? price;
    String? totalPrice;
    DateTime? createdAt;
    DateTime? updatedAt;
    Product? product;

    Item({
        this.id,
        this.orderId,
        this.productId,
        this.quantity,
        this.price,
        this.totalPrice,
        this.createdAt,
        this.updatedAt,
        this.product,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        orderId: json["order_id"],
        productId: json["product_id"],
        quantity: json["quantity"],
        price: json["price"],
        totalPrice: json["total_price"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        product: json["product"] == null ? null : Product.fromJson(json["product"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "order_id": orderId,
        "product_id": productId,
        "quantity": quantity,
        "price": price,
        "total_price": totalPrice,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "product": product?.toJson(),
    };
}

class Product {
    int? id;
    dynamic itemCode;
    String? name;
    dynamic itemType;
    String? description;
    dynamic manufacturer;
    dynamic expiryDate;
    String? price;
    int? categoryId;
    String? discount;
    int? stock;
    List<String>? images;
    dynamic colors;
    dynamic sizes;
    String? averageRating;
    int? totalReviews;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic hsnCode;
    String? salesRate;
    String? purchaseRate;
    String? gstAmount;
    int? quantity;
    String? quantityUnit;
    String? productType;
    bool? isFavorited;

    Product({
        this.id,
        this.itemCode,
        this.name,
        this.itemType,
        this.description,
        this.manufacturer,
        this.expiryDate,
        this.price,
        this.categoryId,
        this.discount,
        this.stock,
        this.images,
        this.colors,
        this.sizes,
        this.averageRating,
        this.totalReviews,
        this.createdAt,
        this.updatedAt,
        this.hsnCode,
        this.salesRate,
        this.purchaseRate,
        this.gstAmount,
        this.quantity,
        this.quantityUnit,
        this.productType,
        this.isFavorited,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        itemCode: json["item_code"],
        name: json["name"],
        itemType: json["item_type"],
        description: json["description"],
        manufacturer: json["manufacturer"],
        expiryDate: json["expiry_date"],
        price: json["price"],
        categoryId: json["category_id"],
        discount: json["discount"],
        stock: json["stock"],
        images: json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
        colors: json["colors"],
        sizes: json["sizes"],
        averageRating: json["average_rating"],
        totalReviews: json["total_reviews"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        hsnCode: json["hsn_code"],
        salesRate: json["sales_rate"],
        purchaseRate: json["purchase_rate"],
        gstAmount: json["gst_amount"],
        quantity: json["quantity"],
        quantityUnit: json["quantity_unit"],
        productType: json["product_type"],
        isFavorited: json["is_favorited"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "item_code": itemCode,
        "name": name,
        "item_type": itemType,
        "description": description,
        "manufacturer": manufacturer,
        "expiry_date": expiryDate,
        "price": price,
        "category_id": categoryId,
        "discount": discount,
        "stock": stock,
        "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "colors": colors,
        "sizes": sizes,
        "average_rating": averageRating,
        "total_reviews": totalReviews,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "hsn_code": hsnCode,
        "sales_rate": salesRate,
        "purchase_rate": purchaseRate,
        "gst_amount": gstAmount,
        "quantity": quantity,
        "quantity_unit": quantityUnit,
        "product_type": productType,
        "is_favorited": isFavorited,
    };
}

class User {
    int? id;
    String? uName;
    String? uEmail;
    String? uPhone;
    String? uAddress;
    String? city;
    dynamic pinCode;
    String? uStatus;
    String? uProfilePic;
    String? uApprovalStatus;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? role;
    int? superCoins;

    User({
        this.id,
        this.uName,
        this.uEmail,
        this.uPhone,
        this.uAddress,
        this.city,
        this.pinCode,
        this.uStatus,
        this.uProfilePic,
        this.uApprovalStatus,
        this.createdAt,
        this.updatedAt,
        this.role,
        this.superCoins,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        uName: json["u_name"],
        uEmail: json["u_email"],
        uPhone: json["u_phone"],
        uAddress: json["u_address"],
        city: json["city"],
        pinCode: json["pin_code"],
        uStatus: json["u_status"],
        uProfilePic: json["u_profile_pic"],
        uApprovalStatus: json["u_approval_status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        role: json["role"],
        superCoins: json["super_coins"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "u_name": uName,
        "u_email": uEmail,
        "u_phone": uPhone,
        "u_address": uAddress,
        "city": city,
        "pin_code": pinCode,
        "u_status": uStatus,
        "u_profile_pic": uProfilePic,
        "u_approval_status": uApprovalStatus,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "role": role,
        "super_coins": superCoins,
    };
}
