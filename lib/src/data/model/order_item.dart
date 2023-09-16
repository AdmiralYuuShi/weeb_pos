import 'package:equatable/equatable.dart';

class OrderItem extends Equatable {
  const OrderItem({
    required this.docId,
    required this.salesOrderId,
    required this.itemId,
    required this.itemName,
    required this.price,
    required this.status,
    this.notes,
  });

  final String docId;
  final String salesOrderId;
  final String itemId;
  final String itemName;
  final double price;
  final int status;
  final String? notes;

  OrderItem copyWith({
    String? salesOrderId,
    String? itemId,
    String? itemName,
    double? price,
    int? status,
    String? notes,
  }) {
    return OrderItem(
      docId: docId,
      salesOrderId: salesOrderId ?? this.salesOrderId,
      itemId: itemId ?? this.itemId,
      itemName: itemName ?? this.itemName,
      price: price ?? this.price,
      status: status ?? this.status,
      notes: notes ?? this.notes,
    );
  }

  @override
  List<Object?> get props {
    return [
      docId,
      salesOrderId,
      itemId,
      itemName,
      price,
      status,
      notes,
    ];
  }
}
