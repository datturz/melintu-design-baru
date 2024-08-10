import 'dart:convert';

class Order {
  final int id;
  final String customerName;
  final DateTime orderDate;
  final String? productName; // Opsional
  final String? status;
  final String? fotoProdukURL; // Opsional
  final String? fotoProgressURL; // Opsional
  final String? videoProgressURL;

  Order({
    required this.id,
    required this.customerName,
    required this.orderDate,
    this.status,
    this.fotoProdukURL,
    this.fotoProgressURL,
    this.videoProgressURL,
    this.productName,
  });

  // Konversi Map ke objek Order
  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'],
      customerName: map['customerName'],
      orderDate: DateTime.parse(map['orderDate']),
      status: map['status'],
      fotoProdukURL: map['fotoProdukURL'],
      fotoProgressURL: map['fotoProgressURL'],
      videoProgressURL: map['videoProgressURL'],
      productName: map['productName'],
    );
  }

  // Konversi objek Order ke Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'customerName': customerName,
      'orderDate': orderDate.toIso8601String(),
      'status': status,
      'fotoProdukURL': fotoProdukURL,
      'fotoProgressURL': fotoProgressURL,
      'videoProgressURL': videoProgressURL,
      'productName': productName,
    };
  }

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));

  // Konversi objek Order ke JSON
  Map<String, dynamic> toJson() => toMap();
}

class OrderItem {
  final String productName;
  final String? fotoProduk; // Opsional
  final String? fotoProgress; // Opsional

  OrderItem({
    required this.productName,
    this.fotoProduk,
    this.fotoProgress,
  });

  // Konversi Map ke objek OrderItem
  factory OrderItem.fromMap(Map<String, dynamic> map) {
    return OrderItem(
      productName: map['productName'],
      fotoProduk: map['fotoProduk'],
      fotoProgress: map['fotoProgress'],
    );
  }

  // Konversi objek OrderItem ke Map
  Map<String, dynamic> toMap() {
    return {
      'productName': productName,
      'fotoProduk': fotoProduk,
      'fotoProgress': fotoProgress,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
